# Makefile for Cardiac demo

SRCDIR=src
BINDIR=build
TARGET=$(BINDIR)/heart_demo

CXX=mpiicpx
CXXFLAGS=-g -O3 -std=c++20 -qopenmp

SYCLFLAGS=$(CXXFLAGS) -fsycl -DUSE_SYCL

GPU_EXE = heart_demo.gpu
CPU_EXE = heart_demo.cpu

gpu: $(GPU_EXE)
cpu: $(CPU_EXE)
all: $(GPU_EXE) $(CPU_EXE)

heart_demo.gpu: $(SRCDIR)/heart_demo_1.cpp $(SRCDIR)/luo_rudy_1991.cpp $(SRCDIR)/rcm.cpp $(SRCDIR)/mesh.cpp
	$(CXX) $(SYCLFLAGS) $(SRCDIR)/heart_demo_1.cpp $(SRCDIR)/luo_rudy_1991.cpp $(SRCDIR)/rcm.cpp $(SRCDIR)/mesh.cpp -o $(BINDIR)/heart_demo.gpu

heart_demo.cpu: $(SRCDIR)/heart_demo.cpp $(SRCDIR)/luo_rudy_1991.cpp $(SRCDIR)/rcm.cpp $(SRCDIR)/mesh.cpp
	$(CXX) $(CXXFLAGS) $(SRCDIR)/heart_demo.cpp $(SRCDIR)/luo_rudy_1991.cpp $(SRCDIR)/rcm.cpp $(SRCDIR)/mesh.cpp -o $(BINDIR)/heart_demo.cpu

	
clean:
	@rm -rf $(BINDIR) 
