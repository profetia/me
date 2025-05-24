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

#let last_updated(date) = {
  place(
    bottom,
    [
      #h(1fr)
      #text("Last updated in " + date, fill: color.gray)
    ],
  )
}

= Linshu Yang

yanglsh\@shanghaitech.edu.cn
| #link("https://github.com/profetia")[github.com/profetia]
| #link("https://www.linkedin.com/in/ly4ng")[linkedin.com/in/ly4ng]
// #h(1fr) Last Updated: #datetime.today().display("[year]/[month]")

== Education
#chiline()

*University of Illinois at Urbana-Champaign* #h(1fr) Since 2025/09 \
Master of Computer Science #h(1fr) Champaign, IL, USA \
*ShanghaiTech University* #h(1fr) 2021/09 -- 2025/07 \
Bachelor of Engineering in Computer Science and Technology #h(1fr) Shanghai,
China \
// - Overall GPA 3.72/4.0, Rank 25/178 (Top 15%), Major GPA 3.83/4.0
- A/A+ Courses: Operating Systems/* (A+) */, Computer Networks/* (A+) */, Computer Aided Verification/* (A+) */, Software Engineering/* (A) */, \
  #h(69pt) Probability and Statistics/* (A) */, Deep Learning/* (A+) */, and 17 others.

== Publications
#chiline()

// - *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) \
//   _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) \
//   *Under Review in _IEEE International Symposium on High-Performance Computer Architecture 2025_*
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* #link(
    "https://dl.acm.org/doi/abs/10.1145/3576841.3589611",
  )[doi.org/10.1145/3576841.3589611] #h(1fr) \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) \
  *Published in _ACM/IEEE International Conference on Cyber-Physical Systems 2023_*

== Research Experience
#chiline()

*Max Planck Institute for Informatics, Network and Cloud System Group* #h(1fr) 2024/09
-- 2024/12\
Research Intern, Advised by *Dr. Yiting Xia* #h(1fr) Saarbrücken, Germany\
- * OpenOptics: An Open Framework for Optical Data Center Networks*
  - OpenOptics is a general-purpose, switch-centric framework as the OpenFlow equivalent for optical DCNs, aiming to decouple software solutions from underlying optical architectures.
  // - Modified `libvma` to implement virtual output queues and perform demand estimation on elephant flows.
  - Extended OpenOptics to support traffic-aware scheduling algorithms in optical DCNs and conducted performance evaluation and comparative analysis within the framework.
*ShanghaiTech University, Wireless and Mobile System Lab* #h(1fr) 2023/12 --
2024/08\
Research Intern, Advised by *Prof. Zhice Yang* #h(1fr) Shanghai, China\
- *Understanding Hybrid Scheduling in Asymmetric Processors*
  - Conducted intensive benchmarks and analyzed performance issues of Linux's Completely Fair Scheduler (CFS) on Asymmetric Multi-Processor (AMP) platforms.
  - Identified the performance bottlenecks of CFS when scheduling workloads under Kernel-based Virtual Machine (KVM), and proposed patches to improve its scheduling decisions.
// TODO: Replace with an official title if needed
// - *Exploitation of Vulnerabilities in a Popular Commodity LIDAR Model*
//   - Evaluated the robustness of existing attack methods on newer LIDAR models,
//     proving their ineffectiveness.
//   - Built an adversarial device replicating a malfunction of a widely-used commodity
//     LIDAR model and used it to explore possible attack methods exploiting this
//     vulnerability.
// - *Understanding Precision Time Protocol in Embedded Systems: A Measurement Study*
//   - Migrated the PTP to BLE on
//     embedded systems by emulating the hardware PTP clock with specific counters.
//   - Implemented a synchronized sound recording system across 20 devices to
//     demonstrate the method's capabilities.
*ShanghaiTech University, Human-Cyber-Physical System Lab* #h(1fr) 2022/07 --
2023/06\
Research Intern, Advised by *Prof. Zhihao Jiang* #h(1fr) Shanghai, China\
- *Model-Checking-Based Diagnosis Assistance for Cardiac Ablation*
  - Designed and developed a Python toolkit for UPPAAL, a model-checking tool, enabling programmatic access and automation. Implemented commonly used algorithms on top of the toolkit to support broader verification tasks.
  - Implemented a model-checking-based diagnosis program for cardiac ablation using the toolkit, and optimized it to process cardiac electrical signals in real time.

== Work Experience
#chiline()

*Ubiquant, HPC System Group* #h(1fr) Since 2025/04\
HPC System Engineer Intern #h(1fr) Shanghai, China
- Reproduced and tuned DeepSeek’s 3FS on Ubiquant’s HPC cluster, achieving over 90% Infiniband utilization on 8 nodes.

*Tencent, Keen Security Lab* #h(1fr) 2024/04 -- 2024/07\
System Software Engineer Intern, #h(1fr) Shanghai, China
- Migrated the Linux kernel to the latest version for Tencent Keen's Linux sandbox. Designed and developed fine-grained probing tools using eBPF and kernel modules to capture and analyze malware during runtime.
- Refactored existing sandbox software by decoupling and pipelining data collection and analysis, improving overall throughput by 30%.
// - Streamlined the gRPC endpoint for the malware database and rewrote the log parser with PEG.

*Deemos Technology* #h(1fr) 2023/01 -- 2023/07\
Full-Stack Software Engineer Intern #h(1fr) Shanghai, China\
- Worked on a full-stack web application for ChatAvatar, a text-to-3D model. Developed interactive frontend and integrated backend to support model generation, user interaction, and result visualization.
// - Designed and implemented a Blender tool to reshape and adjust cloth mesh according to human models.

== Activities
#chiline()

*Open Source Contributions*
- *Contributor, The Rust Programming Language* #h(1fr) Since 2024/12
  - Triaged and fixed issues for Clippy, the Rust linter, including bug fixes and lint improvements. Contributed 40+ merged commits and reduced 200+ false positives in regression tests.

*HPC Competitions*
- *Team Leader, ISC'24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04
  - Responsible for Coding Challenge. Implemented GPU offloading and code optimization for Microphysics, a climate simulation application, achieving strong scaling on Intel Xeon CPU and 200x speedup on NVIDIA A100 GPU.
  - Advised Geekpie HPC team on profiling and code optimization, reducing MPI communication time by 50%.

*Student Organizations*
- *Vice President, Geekpie Association* #h(1fr) 2022/08 -- 2023/07
  - Developed the frontend of Coursebench, a popular course-rating website for ShanghaiTech University.
  - Organized events including Geekpie Games and Geekpie Linux Seminar, with over 1k students participated.

// == Projects
// #chiline()

// *Rathernet* #link("https://github.com/profetia/rathernet")[github.com/profetia/rathernet] #h(1fr) 2023/09
// -- 2023/10\
// An acoustic userspace network stack written in Rust #h(1fr) // #lorem(2)
// \
// - Implemented all five layers of the OSI model from bottom to up, using acoustic
//   wave as the carrier.
// // - Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.
// - Created a customized network address translation, achieving bidirectional
//   interaction with the Internet.
// - Integrated the program into the operating system, enabling common transportation
//   and application protocols.

// *Pintos* #link("https://github.com/profetia/pintos")[github.com/profetia/pintos] #h(1fr) 2023/08
// -- 2023/09\
// An education-oriented operating system from Stanford #h(1fr) // #lorem(2)
// \
// - Implemented core operating system components: kernel threads, user programs,
//   virtual memory, and file system.

// *BusTub* #h(1fr) 2023/11 -- 2023/12\
// A relational database management system from CMU implemented in C++ #h(1fr) // #lorem(2)
// \
// - Completed core DBMS functions including storage management, indexing, query
//   execution, and concurrency control.

// *LBM* #link("https://github.com/winlere/lbm")[github.com/winlere/lbm] #h(1fr) 2023/04
// -- 2023/05\
// An optimized numerical simulation of Computational Fluid Dynamics #h(1fr) // #lorem(2)
// \
// - Optimized the simulation with techniques including OpenMP parallelization, SIMD
//   vectorization, memory alignment, cache blocking, and software pipelining.
// - Achieved a 20x speed increase over baseline on Intel Xeon E5-2698 v4 processor
//   (20 cores).

== Services
#chiline()

- Teaching Assistant, CS100: Computer Programming, ShanghaiTech University #h(1fr) Spring 2023
- Teaching Assistant, CS132: Software Engineering, ShanghaiTech University #h(1fr) Spring 2023

== Awards
#chiline()

- Second Prize (Rank 6/447; with Huawei Kunpeng Special Award), 2025 PKU HPCGame #h(1fr) 2025/01
- Finalist (Rank 9/29; 3/29 for Coding Challenge, OpenMP Track), ISC'24 Student Cluster Competition #h(1fr) 2024/04
- Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
// - Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
- Outstanding Student (Top 3%-7%), ShanghaiTech University #h(1fr) 2022/10
- Level 6, 2019 CCF Certified Software Professional Senior (CSP-S; formerly NOIP) #h(1fr) 2019/12

== Skills
#chiline()
*Working Languages*: Chinese (Native), English (Advanced, TOEFL 112:
R30/L30/S24/W28)\
*Programming Languages*: Python, C, C++, Rust, Golang, Typescript, Shell, SQL\
*Tools and Frameworks*: OpenMP, MPI, CUDA, Linux Kernel, eBPF, PyTorch, UPPAAL, Dafny, Blender\
*DevOps Technologies*: Docker, Kubernetes, Gitlab, Postgres, Cloudflare Worker

#last_updated(datetime.today().display("[month repr:long], [year]"))
