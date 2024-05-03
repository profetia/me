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
#link("https://github.com/mousany")[github.com/mousany] 
#h(1fr) Last Updated: #today.display("[year]/[month]") 

== Education
#chiline()

*ShanghaiTech University* #h(1fr) 2021/09 -- present \
Bachelor of Engineering in Computer Science and Technology #h(1fr) // Shanghai, China 
\
- GPA 3.69/4.0, Rank 25/189
- Relevant Courses: Algorithm and Data Structure (A), Computer Architecture (A+), Software Engineering (A), \ 
  #h(83pt) Computer Networks (A+), Operating System (A+), Deep Learning (A+)
- Standardized Test: 
  - TOFEL: 108 (Reading 29 + Listening 30 + Speaking 22 + Writing 27)

== Research Experience
#chiline()

*Wireless and Mobile System Lab* #h(1fr) 2023/12 -- present \
Research Intern, Advised by Prof. Zhice Yang #h(1fr) // Shanghai, China 
\
- Migrated the Precision Time Protocol (PTP) to Bluetooth Low Energy (BLE) on embedded systems by emulating hardware PTP clock with hardware counters.
- Explored possible attack methods to exploit the vulnerability of a popular commercial LIDAR model.

*Human-Cyber-Physical System Lab* #h(1fr) 2022/07 -- 2023/06 \
Research Intern, Advised by Prof. Zhihao Jiang #h(1fr) // Shanghai, China 
\
- Maintained a Python library for verification of time automata and partially observable systems.
- Implemented and optimized a novel model-checking based cardiac diagnoser to achieve real-time analysis and diagnosis on cardiac electrical signals.
- Deployed a Kubernetes cluster to manage applications of HCPS Lab, providing TLS certificate automation, persistent volumes and load balancers.
  
== Work Experience
#chiline()

// *Keen Security Lab, Tencent Inc.* #h(1fr) 2024/04 -- 2024/07 \
// Software Development Intern #h(1fr) // Shanghai, China
// - TODO

*Deemos Technologies Inc.* #h(1fr) 2023/01 -- 2023/07 \
Software Engineer Intern #h(1fr) // Shanghai, China 
\
- Developed a full stack application to commercialize ChatAvatar, a text to 3D generation model developed by the company.
- Designed and implemented a Blender tool to reshape and adjust cloth mesh according to human model.

== Projects
#chiline()

*Rathernet* #link("https://github.com/mousany/rathernet")[github.com/mousany/rathernet]  #h(1fr) 2023/09 -- 2023/10 \
An acoustic userspace network stack written in Rust #h(1fr) // #lorem(2) 
\
- Implemented all five layers in the OSI model from bottom to up with acoustic wave as the carrier.
- Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.
- Created a customized network address translation, achieving bidirectional interaction with the Internet.
- Integrated into the operating system effortlessly, supporting common transportation and application protocols.

*Pintos* #link("https://github.com/mousany/pintos")[github.com/mousany/pintos] #h(1fr) 2023/08 -- 2023/09 \
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

== Publication
#chiline()

- Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang. *"pyUPPAAL: A Python Package for Risk Analysis of CPS"*, _in ICCPS '23: Proceedings of the ACM/IEEE 14th International Conference on Cyber-Physical Systems (with CPS-IoT Week 2023)_

== Activities
#chiline()

*ISC24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04 \
Team Leader #h(1fr) // Shanghai, China 
- Responsible for implementing GPU offloading, MPI profiling and code optimization for microphysics, a climate simulation application derived from the ICON model. 

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

*Office of Environment, Health and Safety* #h(1fr) 2023/02 -- 2023/06 \
Assistant Manager #h(1fr) // Shanghai, China 
\

== Skills
#chiline()

*Programming Languages*: Python, Rust, C, C++, Typescript, Golang, Shell, SQL \
*Tools and Frameworks*: Pytorch, MPI, OpenMP, CUDA, UPPAAL, Blender, VTune, FastAPI, React \
*DevOps Technologies*: Kubernetes, Docker, Gitlab, Postgres, Cloudflare Worker

== Awards
#chiline()

- Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
- Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
- Outstanding Student, ShanghaiTech University #h(1fr) 2022/10
