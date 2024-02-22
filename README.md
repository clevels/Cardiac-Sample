# `Cardiac` Sample

This is the "heart_demo" project that implements minimal functionality
for a real-time 3D cardiac electrophysiology simulation.
It can be launched on "host" and Intel(R) Many Integrated Core Architecture processors.

| Property                       | Description
|:---                               |:---
| What you will learn               | How to build the cardiac sample and run Advisor to analyze an MPI application running on the CPU and GPU.
| Time to complete                  | 30 minutes

## Prerequisites

| Optimized for                       | Description
|:---                               |:---
| OS                                | Linux* Ubuntu* 18.04
| Hardware                          | Skylake and GEN9 or newer
| Software                          | Intel&reg; oneAPI DPC++/C++ Compiler, MPI, OpenMP*, Intel&reg; Advisor


## Building the `Cardiac Sample`

> **Note**: If you have not already done so, set up your CLI
> environment by sourcing  the `setvars` script located in
> the root of your oneAPI installation.
>
> Linux:
> - For system wide installations: `. /opt/intel/oneapi/setvars.sh`
> - For private installations: `. ~/intel/oneapi/setvars.sh`
>
> Windows:
> - `C:\Program Files(x86)\Intel\oneAPI\setvars.bat`
>
>For more information on environment variables, see Use the setvars Script for [Linux or macOS](https://www.intel.com/content/www/us/en/develop/documentation/oneapi-programming-guide/top/oneapi-development-environment-setup/use-the-setvars-script-with-linux-or-macos.html), or [Windows](https://www.intel.com/content/www/us/en/develop/documentation/oneapi-programming-guide/top/oneapi-development-environment-setup/use-the-setvars-script-with-windows.html).

### Running Samples in Intel&reg; DevCloud

If running a sample in the Intel&reg; DevCloud, you must specify the compute node (CPU, GPU, FPGA) and whether to run in batch or interactive mode. For more information, see the Intel&reg; oneAPI Base Toolkit [Get Started Guide](https://devcloud.intel.com/oneapi/get_started/).

### Build the Sample `On Linux*`
Perform the following steps:
1. Build the program using the following commands.
   ```
   $ mkdir build
   $ make
   ```

2. Run the program.
   ```
   $ cd ..
   $ mpirun -n 2 ./<executable> -m <workload size> -s <workload size> -t 100
   ```

### Application Parameters

You can change the workload size with the Cardiac Sample.<br><br>
**`-m <workload size>`**<br>
 ```
    mesh_small : Defines the 3 dimensional grid sizes for the stencil
    mesh_mid   : Number of timesteps to compute.
   ```
**`-s <workload size.txt>`**<br>
 ```
    setup_small.txt : Defines the 3 dimensional grid sizes for the stencil
    setup_mid.txt   : Number of timesteps to compute.
   ```
### Troubleshooting
If you receive an error message, troubleshoot the problem using the Diagnostics Utility for Intel&reg; oneAPI Toolkits, which provides system checks to find missing
dependencies and permissions errors. See [Diagnostics Utility for Intel&reg; oneAPI Toolkits User Guide](https://www.intel.com/content/www/us/en/develop/documentation/diagnostic-utility-user-guide/top.html).

If an error occurs, you can get more details by running `make` with
the `VERBOSE=1` argument:
```
make VERBOSE=1
```

## Guided Build with Intel&reg; Advisor

Below is a high-level Advisor analysis to analyze performance on the CPU

> **Note**: The actual results and measurements may vary depending on your actual hardware.


### Hotspots Analysis

Run a hotspots analysis to find the bottlenecks and most time consuming loop.

**`VTune Command`**

## Output

```
Insert Output
```
## License

Code samples are licensed under the MIT license. See
[License.txt](https://github.com/oneapi-src/oneAPI-samples/blob/master/License.txt) for details.

Third party program Licenses can be found here: [third-party-programs.txt](https://github.com/oneapi-src/oneAPI-samples/blob/master/third-party-programs.txt).
