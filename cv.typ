#show heading: set text(font: "Linux Biolinum O")
#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(margin: (x: 0.9cm, y: 1.3cm))

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

= Linshu Yang

yanglsh\@shanghaitech.edu.cn |
#link("https://github.com/profetia")[github.com/profetia]
#h(1fr) Last Updated: #datetime.today().display("[year]/[month]")

== Education
#chiline()

*ShanghaiTech University* #h(1fr) 2021/09 -- present\
Bachelor of Engineering in Computer Science and Technology #h(1fr) Shanghai,
China\
- Overall GPA 3.72/4.0, Rank 25/178 (Top 15%), Major GPA 3.83/4.0
- Relevant Courses: Algorithms and Data Structure (A),/*Computer Architecture (A+), */ Computer
  Networks (A+), Operating Systems (A+),\
  #h(83pt) Software Engineering (A), Deep Learning (A+), Computer Aided
  Verification (A+)

== Publications
#chiline()

- *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) \
  _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) \
  *Under Review in _IEEE International Symposium on High-Performance Computer Architecture 2025_*
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* #link(
    "https://dl.acm.org/doi/abs/10.1145/3576841.3589611",
  )[doi.org/10.1145/3576841.3589611] #h(1fr) \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) \
  *Published in _ACM/IEEE International Conference on Cyber-Physical Systems 2023_*

== Research Experience
#chiline()

*Max Planck Institute for Informatics, Network and Cloud System Group* #h(1fr) 2024/09
-- 2024/11\
Research Intern, Advised by *Prof. Yiting Xia* #h(1fr) Saarbrücken, Germany\
- * OpenOptics: An Open Framework for Optical Data Center Networks*
  // - Modified `libvma` to implement virtual output queues and perform demand estimation on elephant flows.
  - Built a realistic end-to-end evaluation platform for traffic-aware schedulers in
    DCN with Intel Tofino programmable switches, enabling reliable comparisons
    between scheduling algorithms such as c-Through and Mordia.
*ShanghaiTech University, Wireless and Mobile System Lab* #h(1fr) 2023/12 --
2024/08\
Research Intern, Advised by *Prof. Zhice Yang* #h(1fr) Shanghai, China\
- *Understanding Hybrid Scheduling in Asymmetric Processors*
  - Identified a bottleneck in eBPF-intensive workloads, common in malware analysis,
    for the Linux CFS and demonstrated the effectiveness of ITD updates in kernel
    space for the proposed ITD-guided scheduler.
  - Provided a comprehensive benchmark of the proposed scheduler for
    virtualization and other kernel-heavy tasks.
// TODO: Replace with an official title if needed
// - *Exploitation of Vulnerabilities in a Popular Commodity LIDAR Model*
//   - Evaluated the robustness of existing attack methods on newer LIDAR models,
//     proving their ineffectiveness.
//   - Built an adversarial device replicating a malfunction of a widely-used commodity
//     LIDAR model and used it to explore possible attack methods exploiting this
//     vulnerability.
- *Understanding Precision Time Protocol in Embedded Systems: A Measurement Study*
  - Migrated the PTP to BLE on
    embedded systems by emulating the hardware PTP clock with specific counters.
  - Implemented a synchronized sound recording system across 20 devices to
    demonstrate the method's capabilities.
*ShanghaiTech University, Human-Cyber-Physical System Lab* #h(1fr) 2022/07 --
2023/06\
Research Intern, Advised by *Prof. Zhihao Jiang* #h(1fr) Shanghai, China\
- *Model-Checking-Based Diagnosis Assistance for Cardiac Ablation*
  - Built a Python toolkit for UPPAAL with implementation of common use cases and
    algorithms in CPS.
  - Implemented and optimized a novel model-checking-based cardiac diagnoser to
    achieve real-time analysis and diagnosis based on cardiac electrical signals.
// - Deployed a Kubernetes cluster to manage applications of HCPS Lab, providing TLS certificate automation, persistent volumes and load balancers.

== Work Experience
#chiline()

*Tencent, Keen Security Lab* #h(1fr) 2024/04 -- 2024/07\
System R&D Intern, Tactic Intelligence Team #h(1fr) Shanghai, China
- Upgraded the Linux sandbox for malware analysis by updating the kernel and
  utilizing new kernel features.
- Extended the dynamic observation and analysis capabilities of the Linux sandbox
  using customized probing tools in eBPF and kernel modules.
// - Extended dynamic analysis capabilities of the Linux sandbox with customized probing tools in eBPF and kernel modules.
- Streamlined the gRPC endpoint for the malware database and rewrote the log
  parser with PEG.

*Deemos Technologies* #h(1fr) 2023/01 -- 2023/07\
Software Engineer Intern #h(1fr) Shanghai, China\
- Built an interactive avatar system based on ChatAvatar, a text to 3D model, at
  Global AI Developer Conference 2023.
- Designed and implemented a Blender tool to reshape and adjust cloth mesh
  according to human models.

== Activities
#chiline()

*Open Source Contributions*
- *Contributor, The Rust Programming Language* #h(1fr) 2024/12 -- present
  - Extended the exhaustive check for the `replace-if-let-with-match` refactor option of rust-analyzer in PR \#18797.
  - Triage and fix issues for Clippy, the Rust linter, including bug fixes and improvements in PRs \#13888, \#13889, \#13891, \#14151, \#14204, \#14209, \#14210 and \#14237.

*HPC Competitions*
- *Team Leader, ISC'24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04
  - Implemented GPU offloading and code optimization for microphysics, a climate
    simulation application derived from the ICON model, achieving strong scaling on
    CPU and a 200x acceleration on GPU.
  - Guided the team through MPI profiling and optimization, reducing the time spend
    on communication by 50%.

*Student Organizations*
- *Vice President, Geekpie Association* #h(1fr) 2022/08 -- 2023/07
  - Developed the frontend of Coursebench, a popular course-rating platform at
    ShanghaiTech University.
  - Organized events including Geekpie Games and Geekpie Linux Seminar, with more
    than 1,000 students participated.

*Teachings*
- *Teaching Assistant, ShanghaiTech University* #h(1fr) 2023/02 -- 2023/06
  - CS100: Computer Programming, 2023 Spring
  - CS132: Software Engineering, 2023 Spring

== Projects
#chiline()

*Rathernet* #link("https://github.com/profetia/rathernet")[github.com/profetia/rathernet] #h(1fr) 2023/09
-- 2023/10\
An acoustic userspace network stack written in Rust #h(1fr) // #lorem(2)
\
- Implemented all five layers of the OSI model from bottom to up, using acoustic
  wave as the carrier.
// - Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.
- Created a customized network address translation, achieving bidirectional
  interaction with the Internet.
- Integrated the program into the operating system, enabling common transportation
  and application protocols.

*Pintos* #link("https://github.com/profetia/pintos")[github.com/profetia/pintos] #h(1fr) 2023/08
-- 2023/09\
An education-oriented operating system from Stanford #h(1fr) // #lorem(2)
\
- Implemented core operating system components: kernel threads, user programs,
  virtual memory, and file system.

*BusTub* #h(1fr) 2023/11 -- 2023/12\
A relational database management system from CMU implemented in C++ #h(1fr) // #lorem(2)
\
- Completed core DBMS functions including storage management, indexing, query
  execution, and concurrency control.

*LBM* #link("https://github.com/winlere/lbm")[github.com/winlere/lbm] #h(1fr) 2023/04
-- 2023/05\
An optimized numerical simulation of Computational Fluid Dynamics #h(1fr) // #lorem(2)
\
- Optimized the simulation with techniques including OpenMP parallelization, SIMD
  vectorization, memory alignment, cache blocking, and software pipelining.
- Achieved a 20x speed increase over baseline on Intel Xeon E5-2698 v4 processor
  (20 cores).

== Awards
#chiline()

- Second Prize (Rank 6/447), 2025 The 2nd PKU HPCGame #h(1fr) 2025/01
- Rank 9/29 (5/29 for my part on microphysics), ISC'24 Student Cluster Competition #h(1fr) 2024/04
- Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
// - Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
- Merit Student (Rank 3%-7%), ShanghaiTech University #h(1fr) 2022/10
- Level 6, the 2019 Certified Software Professional Senior Track (formerly NOIP) #h(1fr) 2019/12

== Skills
#chiline()
*Linguistic Proficiency*: Chinese (Native), English (Advanced, TOEFL 112:
R30/L30/S24/W28)\
*Programming Languages*: Python, C, C++, Rust, Golang, Typescript, Shell, SQL\
*Tools and Frameworks*: PyTorch, OpenMP, MPI, CUDA, Linux Kernel, eBPF, UPPAAL,
Dafny, Blender\
*DevOps Technologies*: Kubernetes, Docker, Gitlab, Postgres, Cloudflare Worker
