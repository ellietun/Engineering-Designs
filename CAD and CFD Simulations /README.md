# Circle of Willis CFD Simulation

## Overview
This repository contains **CFD simulation files** for the **Circle of Willis**, a crucial arterial structure in the brain. The study models blood flow using a **Non-Newtonian fluid approach** to analyze hemodynamics under physiological conditions.

## Preview of File
<img width="915" alt="Screenshot 2025-02-01 at 5 37 09 PM" src="https://github.com/user-attachments/assets/c43c68ed-f5ff-4ed0-9ef6-a984614a3e75" />

## Simulation Details
### **Physical Model**
- Simplified 3D model of the **Circle of Willis**
- Blood modeled as a **Non-Newtonian fluid** using the **Carreau-Yasuda Model**:

### **Boundary Conditions**
- **4 Velocity Inlets:**
  - `Inlet_VA_left`
  - `Inlet_VA_right`
  - `Inlet_ICA_left`
  - `Inlet_ICA_right`
- **6 Pressure Outlets:**
  - `Outlet_PCA_left`
  - `Outlet_PCA_right`
  - `Outlet_ACA_left`
  - `Outlet_ACA_right`
  - `Outlet_MCA_left`
  - `Outlet_MCA_right`

### **Simulation Setup**
- **Software:** Ansys Fluent
- **Solver:** Pressure-based, steady-state simulation
- **Mesh Quality:** Orthogonal quality **> 0.1** (good quality mesh confirmed)
- **Viscous Model:** Laminar (low Reynolds number)
- **Material Properties:**
  - Density: **1060 kg/m³**
  - Viscosity: **Carreau Model** with predefined parameters

### **Boundary Conditions in Fluent**
- **Inlets:**
  - `Inlet_ICA_left`: **Velocity = 0.5 m/s** (same for all ICA inlets)
  - `Inlet_VA_left`: **Velocity = 0.15 m/s** (same for all VA inlets)
- **Outlets:**
  - `Outlet_ACA_left`: **Gauge pressure = 13332 Pa** (same for all outlets)

### **Numerical Solution**
- **Solver Settings:**
  - **Pseudo-transient** enabled
  - **Default residual monitors**
  - **Mass flow rate reports** added for inlets and outlets
- **Iterations:**
  - Initialized and run for **200 iterations**
- **Visualization & Post-processing:**
  - **Contours:** Wall shear stress, velocity magnitude, and static pressure
  - **Pathlines:** All inlets selected with 1000 steps and velocity-based coloring

## Files Included
- `Circle of Willie simulation.mp4` – Animated simulation video
- `Circle_of_Willis-SimulationFiles/` – Folder containing Fluent case and data files
- `StaticPressureFEA.png` – Contour plot of static pressure
- `VelocityMagnitudeFEA.png` – Contour plot of velocity magnitude
- `VelocityPathlinesFEA.png` – Pathline visualization of blood flow
- `WallShearStressFEA.png` – Contour plot of wall shear stress

## How to Use
1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/circle-of-willis-cfd.git
   ```
2. **Open Ansys Fluent** and load the case file from `Circle_of_Willis-SimulationFiles`
3. **Run the Simulation** using the provided setup
4. **Visualize Results**:
   - Open `.png` files for contour and pathline visualizations
   - View `Circle of Willie simulation.mp4` for the animated simulation

## Future Work
- Refine **mesh density** to improve accuracy
- Perform **transient simulations** to analyze pulsatile blood flow
- Compare **Newtonian vs Non-Newtonian models** for further analysis

## Contributions
Contributions are welcome! Feel free to fork, modify, and submit improvements.
