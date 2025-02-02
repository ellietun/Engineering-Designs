# Computational Fluid Dynamics (CFD) Study

## Overview
This repository contains the results and findings of a **Computational Fluid Dynamics (CFD) study**, which involved two major simulations:

1. **Flow over a bluff body in a steady laminar regime** – Focused on mesh sensitivity analysis.
2. **Flow over NACA0012 and NACA4412 aerofoils** – Investigating aerodynamic characteristics under various angles of attack.

This study applied **ANSYS Fluent** to model and analyze the flow behaviors under steady and transient conditions, demonstrating the effectiveness of CFD for real-world aerodynamic applications.

📌 **Final Score: 38/40**

## Study Details
### **Part I: Flow Over a Bluff Body**
#### **Objective**
- Conduct **mesh refinement** for a bluff body in steady **laminar flow**.
- Analyze velocity fields, drag coefficients, and wake formation.

#### **Methodology**
- Developed the **2D computational domain** in **ANSYS DesignModeler**.
- Defined boundary conditions:
  - **Velocity Inlet:** 0.001 m/s (horizontal body) | 0.0002 m/s (vertical body)
  - **Pressure Outlet:** Gauge pressure = 0 Pa
  - **Walls:** No-slip stationary
- Conducted **mesh sensitivity analysis** with 3-6 grid refinements.
- Analyzed velocity contour plots, velocity profiles, drag coefficients, and wake formation lengths.
- Selected the optimal **mesh size** based on refinement results and accuracy.

### **Part II: Aerodynamic Study of Aerofoils**
#### **Objective**
- Simulate airflow over **NACA0012 and NACA4412 aerofoils** at different **angles of attack (AoA)**.
- Compare steady and transient **flow behaviors**.

#### **Methodology**
- Modeled 2D aerofoils in **ANSYS Fluent**.
- Defined boundary conditions:
  - **Velocity Inlet:** 87.644 m/s
  - **Pressure Outlet:** Gauge pressure = 0 Pa
  - **No-Slip Walls**
- Used **SST K-Omega model** for **steady cases** (0°, 5°, 10°, 15°).
- Applied **Spalart-Allmaras model** for **transient analysis** (20° AoA).
- Compared **lift (CL) and drag (CD) coefficients** with NASA reference values.
- Analyzed flow patterns through **pressure contours, velocity streamlines, and vortex shedding**.

### **Key Findings**
- **Bluff Body Simulation:** Mesh sensitivity confirmed **convergence of drag coefficient and wake formation**.
- **Aerofoil Analysis:**
  - **NACA0012** produced **zero lift at 0° AoA** (as expected for symmetrical aerofoils).
  - **NACA4412** generated significant lift, especially at higher angles.
  - **At 20° AoA**, transient simulations revealed **vortex shedding and unsteady separation**.
- **Practical Implications:**
  - Optimal **AoA for takeoff**: Between **5°-15°** (high lift, minimal drag).
  - Efficient **AoA for cruise**: Near **5°** (best lift-to-drag ratio).

## Files Included
- **Bluff Body Analysis**
  - `BluffBody_Results.png` – Mesh sensitivity and wake formation plots.
  - `VelocityContours.png` – Velocity profiles at different mesh refinements.
- **Aerofoil Analysis**
  - `NACA0012_Results.png` – Lift and drag coefficients.
  - `NACA4412_Results.png` – Steady and transient results.
  - `VortexShedding.mp4` – Animation of transient vortex behavior.

## How to Use
1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/cfd-aero-study.git
   ```
2. Open **ANSYS Fluent** and load the case files.
3. Run simulations and analyze **velocity contours, lift & drag plots, and pressure profiles**.

## Future Work
- Extend to **3D aerofoil simulations** for increased accuracy.
- Analyze **turbulent wake structures** at higher Reynolds numbers.
- Implement **LES or DNS turbulence models** for improved transient predictions.

## Contributions
Feel free to fork, modify, and improve this study. Suggestions and collaborations are welcome!
