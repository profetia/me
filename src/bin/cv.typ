#show heading: set text(font: "Linux Biolinum")
#show link: underline 

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

#let today = datetime.today()

= Linshu Yang

yanglsh\@shanghaitech.edu.cn |
#link("https://github.com/profetia")[github.com/profetia] 
#h(1fr) Last Updated: #today.display("[year]/[month]") 

== Education
#chiline()

*ShanghaiTech University* #h(1fr) 2021/09 -- present \
Bachelor of Engineering in Computer Science and Technology #h(1fr) Shanghai, China 
\
- Overall GPA 3.72/4.0, Rank 25/178 (15%), Major GPA 3.83/4.0
// TODO: Computer Architecture maybe removed
- Relevant Courses: Algorithm and Data Structure (A), /*Computer Architecture (A+), */ Computer Networks (A+), Operating System (A+),\ 
   #h(83pt) Software Engineering (A), Deep Learning (A+), Computer Aided Verification (A+)
- Standardized Test: 
  - TOFEL: 112 (Reading 30 + Listening 30 + Speaking 24 + Writing 28)

== Publications
#chiline()

- *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) \
  _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) \
  *Under Review in IEEE International Symposium on High-Performance Computer Architecture 2025*
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* #link("https://dl.acm.org/doi/abs/10.1145/3576841.3589611")[doi.org/10.1145/3576841.3589611] #h(1fr) \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) \
  *Accepted by ACM/IEEE International Conference on Cyber-Physical Systems 2023 Poster Session*

== Research Experience
#chiline()

*Max Planck Institute for Informatics, Network and Cloud System Group* #h(1fr) 2024/09 -- 2024/12 \
Research Intern, Advised by *Prof. Yiting Xia* #h(1fr) Saarbrücken, Germany
\
- * OpenOptics: An Open Framework for Optical Data Center Networks *
  - Modified libvma to support virtual output queues and perform demand estimation on elephent flows.
  - Implemented traffic-aware scheduling for OpenOptics on Intel Tofino programmable switches, supporting typical scheduling algorithms such as c-Through and Mordia.
*ShanghaiTech University, Wireless and Mobile System Lab* #h(1fr) 2023/12 -- 2024/08 \
Research Intern, Advised by *Prof. Zhice Yang* #h(1fr) Shanghai, China 
\
- *Understanding Precision Time Protocol in Embedded Systems*
  - Migrated the Precision Time Protocol (PTP) to Bluetooth Low Energy (BLE) on embedded systems by emulating hardware PTP clock with specific counters.
  - Implemented a synchronized sound recording system across 20 devices to demonstrate the capabilities of our method.
// TODO: Replace with an official title if needed
- *Targeted Exploitation of Vulnerabilities in a Popular Commodity LIDAR Model*
  - Evaluated the effectiveness of existing attack methods on newer models of LIDAR.
  - Built an embedded device to replicate the malfunction of a widely-used commodity LiDAR model.
  - Explored possible attack methods to exploit the vulnerability caused by the malfunction.
- *Understanding Hybrid Scheduling in Asymmetric Processors*
  - Proposed an eBPF-intensive scenario, common in malware analysis, to demonstrate ITD updates in kernel space.
  - Benchmarked the performance of the proposed ITD-guided scheduler on virtualization and kernel-heavy workloads.
*ShanghaiTech University, Human-Cyber-Physical System Lab* #h(1fr) 2022/07 -- 2023/06 \
Research Intern, Advised by *Prof. Zhihao Jiang* #h(1fr) Shanghai, China 
\
- *Model-Checking-Based Diagnosis Assistance for Cardiac Ablation*
  - Built a Python toolkit to work with UPPAAL with implementation of common use cases and algorithms in CPS.
  - Implemented and optimized a novel model-checking based cardiac diagnoser to achieve real-time analysis and diagnosis on cardiac electrical signals.
// - Deployed a Kubernetes cluster to manage applications of HCPS Lab, providing TLS certificate automation, persistent volumes and load balancers.
  
== Work Experience
#chiline()

*Tencent, Keen Security Lab* #h(1fr) 2024/04 -- 2024/07 \
System R&D Intern, Tactic Intelligence Team #h(1fr) Shanghai, China
- Renovated the abandoned Linux sandbox to support the newer kernel versions.
- Extended the dynamic malware analysis capability of the sandbox with kernel modules and eBPF.
- Streamlined the gRPC endpoint for the malware database and rewrote the log parser with PEG.

*Deemos Technologies* #h(1fr) 2023/01 -- 2023/07 \
Software Engineer Intern #h(1fr) Shanghai, China 
\
- Developed an interactive avatar system based on ChatAvatar, a text to 3D model, at Global AI developer Conference 2023.
- Designed and implemented a Blender tool to reshape and adjust cloth mesh according to human models.

== Activities
#chiline()

*ISC24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04 \
Team Leader #h(1fr) // Shanghai, China 
- Responsible for implementing GPU offloading and code optimization for microphysics, a climate simulation application derived from the ICON model. 
- Guided the team on MPI profiling and optimization, reducing the time spend on communication by 50%.

*Geekpie Association* #h(1fr) 2022/08 -- 2023/07 \
Vice President #h(1fr) // Shanghai, China 
\
- Developed the frontend of Coursebench, a course rating platform at ShanghaiTech University.
- Organized events including Geekpie Games and Geekpie Linux Seminar, with more than 1k students participated.

*School of Information Science and Technology* #h(1fr) 2023/02 -- 2023/06 \
Teaching Assistant #h(1fr) // Shanghai, China 
\
- CS100: Computer Programming, ShanghaiTech University
- CS132: Software Engineering, ShanghaiTech University

// *Office of Environment, Health and Safety* #h(1fr) 2022/09 -- 2022/11 \
// Assistant Manager #h(1fr) // Shanghai, China 
// \

== Projects
#chiline()

*Rathernet* #link("https://github.com/profetia/rathernet")[github.com/profetia/rathernet]  #h(1fr) 2023/09 -- 2023/10 \
An acoustic userspace network stack written in Rust #h(1fr) // #lorem(2) 
\
- Implemented all five layers in the OSI model from bottom to up with acoustic wave as the carrier.
// - Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.
- Created a customized network address translation, achieving bidirectional interaction with the Internet.
- Integrated into the operating system effortlessly, supporting common transportation and application protocols.

*Pintos* #link("https://github.com/profetia/pintos")[github.com/profetia/pintos] #h(1fr) 2023/08 -- 2023/09 \
An education oriented operating system from Stanford  #h(1fr) // #lorem(2) 
\
- Completed core components of an operating system: kernel threads, user programs, virtual memory and file system.

*BusTub* #h(1fr) 2023/11 -- 2023/12 \
A relational database management system from CMU implemented in C++  #h(1fr) // #lorem(2) 
\
- Implemented core functionalities of a DBMS including storage management, indexing, query execution and concurrency control.

*LBM* #link("https://github.com/winlere/lbm")[github.com/winlere/lbm] #h(1fr) 2023/04 -- 2023/05 \
An optimized numerical simulation of Computational Fluid Dynamics   #h(1fr) // #lorem(2) 
\
- Optimized the simulation with techniques including OpenMP parallelization, SIMD vectorization, memory alignment, cache blocking and software pipelining.
- Achieved 20x speed up compared to the baseline on Intel Xeon E5-2698 v4 processor (20 cores).

== Awards
#chiline()

- Rank 9/29 (5/29 for my part on microphysics), ISC24 Student Cluster Competition #h(1fr) 2024/04
- Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
// - Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
- Merit Student (Rank 3%-7%), ShanghaiTech University #h(1fr) 2022/10
- Level 6, the 2019 Certified Software Professional Senior Track (formerly NOIP) #h(1fr) 2019/12

== Skills
#chiline()

*Programming Languages*: Python, C, C++, Rust, Golang, Typescript, Shell, SQL \
*Tools and Frameworks*: PyTorch, MPI, OpenMP, CUDA, Linux Kernel, eBPF, UPPAAL, Dafny, Blender \
*DevOps Technologies*: Kubernetes, Docker, Gitlab, Postgres, Cloudflare Worker
