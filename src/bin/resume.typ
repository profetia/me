#import "@preview/fontawesome:0.1.0": *
#import "../lib.typ": option, option_ext

#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)
#set par(justify: true)

#let today = datetime.today()
#let dark = rgb("#131A28")
#let github = box(
  fa-icon("github", fa-set: "Brands", fill: dark),
)
#let email = box(fa-icon("envelope", fill: dark))

#let lang = "en"
#option.option("lang", lang)
#let zh(content) = [
  #set text(font: "Microsoft YaHei")
  #option_ext.zh(content)
]
#let en(content) = [
  #option_ext.en(content)
]
#let present = [
  #en[present]
  #zh[至今]
]

#show link: underline
#show heading.where(level: 1): it => [
  #set align(center)
  #set text(size: 28pt)
  #it.body
]
#show heading.where(level: 2): it => [
  #set text(size: 14pt)
  #set block(above: 0.5em, below: 0.5em)
  #v(0.1em)
  #it.body
  #v(-3pt)
  #line(length: 100%)
]
#show heading.where(level: 3): it => [
  #it.body
]
#let contact(it) = [
  #set align(center)
  #set text(size: 12pt)
  #set block(above: 0.5em, below: 0.5em)
  #block[
    #align(horizon)[
      #it
    ]
  ]
]
#let description(it) = [
  #set text(style: "normal", weight: "regular")
  #it
]

= #en[Linshu Yang] #zh[杨林树]
#en[#v(-0.75em)]

// *Pudong, Shanghai, China* <contact>
#contact[
  #email #link("mailto:yanglsh@shanghaitech.edu.cn")[yanglsh\@shanghaitech.edu.cn] |
  #github #link("https://github.com/profetia")[github.com/profetia] 
]

#en[#v(1em)]

== #en[Education] #zh[教育经历]

#en[=== ShanghaiTech University]
#zh[=== 上海科技大学]
#h(1fr) 2021/09 -- #present \
#en[Bachelor of Engineering in Computer Science and Technology ]
#zh[计算机科学与技术工程学士]
#h(1fr) 
GPA 3.72/4.0 (15%), #en[TOFEL] #zh[托福] 112
- #en[Relevant Courses: Computer Architecture, Software Engineering, Computer Networks, Operating System,  \ 
  #h(83pt) Parallel Computing, Database Systems, Deep Learning, Computer Aided Verification]
  #zh[相关课程：计算机体系结构，软件工程，计算机网络，操作系统，并行计算，数据库，计算机辅助验证]

#zh[#v(3pt)]

== #en[Research Experience] #zh[科研经历]
=== #en[Max Planck Institute for Informatics, Network and Cloud System Group] #zh[马克思普朗克信息研究所，网络与云系统组]
#h(1fr) 2024/09 -- 2024/11 \
#en[Research Intern, Advised by *Prof. Yiting Xia*] #zh[在夏艺婷教授指导下的科研]
#h(1fr)
#en[Data Center Network, Optical Network, Programmable Switch]
#zh[数据中心网络，光网络，可编程交换机]
\
- #en[Implemented traffic-aware scheduling for OpenOptics, supporting typical algorithms such as c-Through and Mordia.]
  #zh[为 OpenOptics 实现了基于流量的调度，支持 c-Through 和 Mordia 等典型调度算法。]
#v(-4pt)
=== #en[ShanghaiTech University, Wireless and Mobile System Lab] #zh[上海科技大学，无线与移动系统实验室]
#h(1fr) 2023/12 -- 2024/08 \
#en[Research Intern, Advised by *Prof. Zhice Yang*] 
#zh[在杨智策教授指导下的科研]
#h(1fr) 
#en[Wireless Networking System, Network Physical System]
#zh[无线网络系统，网络物理系统，操作系统内核]
\
- #en[Migrated the Precision Time Protocol (PTP) to Bluetooth Low Energy (BLE) on embedded systems by emulating hardware PTP clock with hardware counters.]
  #zh[在嵌入式系统上利用硬件计数器模拟硬件PTP时钟，将精确时间协议（PTP）迁移到蓝牙低功耗（BLE）上。]
- #en[Explored possible attack methods to exploit the vulnerability of a popular commercial LIDAR model.]
  #zh[探索了多种可能的攻击方法，利用一款流行的商用激光雷达的漏洞。]
- #en[Proposed an eBPF-intensive scenario to show the effectiveness of ITD updates in the kernel for the ITD-guided scheduler.] 
  #zh[提出了一个常见于恶意代码分析的 eBPF 密集场景，以展示内核空间中的 ITD 更新。]
#v(-4pt)
=== #en[ShanghaiTech University, Human-Cyber-Physical System Lab] #zh[上海科技大学，人-机-物三元融合实验室]
#h(1fr) 2022/07 -- 2023/06 \
#en[Research Intern, Advised by *Prof. Zhihao Jiang*]
#zh[在江智浩教授指导下的科研]
#h(1fr)
#en[Formal Methods, Model Checking, Cyber-Physical System]
#zh[形式化方法，模型验证，网络物理系统]
\
- #en[Maintained a Python library for verification of time automata and partially observable systems.]
  #zh[维护了一个基于 UPPAAL 验证求解器的时间自动机模型验证工具链。]
- #en[Implemented and optimized a novel model-checking based cardiac diagnoser to achieve real-time analysis and diagnosis on cardiac electrical signals.]
  #zh[实现并优化了一种基于抽象细化模型验证方法的错误诊断算法，并应用于对心脏电信号的实时分析和诊断。]
// - #en[Deployed a Kubernetes cluster to manage applications of HCPS Lab, providing TLS certificate automation, persistent volumes and load balancers.]
//   #zh[部署了一个 Kubernetes 集群，用于管理实验室的应用，提供自动化 TLS 证书、持久卷和负载均衡器。]
  
#zh[#v(3pt)]

== #en[Work Experience] #zh[工作经历]

=== #en[Keen Security Lab, Tencent] #zh[腾讯科恩安全实验室]
#h(1fr) 2024/04 -- 2024/07 \
#en[System R&D Intern, Tactic Intelligence Team] #zh[情报系统研发实习]
#h(1fr) 
#en[Malware Analysis, Linux, eBPF] #zh[恶意代码分析，Linux，eBPF]
#en[
- Recreated the Linux sandbox for malware analysis by upgrading the kernel and utilizing new kernel features.
- Extended dynamic analysis capabilities of the Linux sandbox with customized tracing tools like eBPF and kernel modules.
- Streamlined the gRPC endpoint for the malware database and rewrote the log parser with PEG.
]
#zh[
- 翻新了被废弃的 Linux 沙箱以支持新的内核版本，并通过内核模块和 eBPF 扩展了沙箱的动态内存分析能力。
- 重构了恶意代码数据库的 gRPC 终端，并使用 PEG 重写了日志解析器。
]

// === #en[Deemos Technologies Inc.] #zh[影眸科技有限公司]
// #h(1fr) 2023/01 -- 2023/07 \
// #en[Software Engineer Intern] #zh[软件开发实习] #h(1fr) // Shanghai, China 
// \
// - #en[Developed a full stack application to commercialize ChatAvatar, a text to 3D generation model developed by the company.]
//   #zh[开发了一个全栈应用，用于商业化公司开发的 ChatAvatar 文本到 3D 生成模型。]
// - #en[Designed and implemented a Blender tool to reshape and adjust cloth mesh according to human model.]
//   #zh[设计并实现了一个 Blender 插件，用于根据人体模型调整衣物模型的大小和形状。]

#zh[#v(3pt)]

== #en[Projects] #zh[项目经历]

=== Rathernet: 
#description[
  #en[An acoustic userspace network stack written in Rust]
  #zh[基于声波传输的用户空间网络协议栈]
] *[#link("https://github.com/profetia/rathernet")[code]]*
#h(1fr)
#en[Rust, Wireless Network, Network Protocol]
#zh[Rust，无线网络，网络协议]
\
- #en[Implemented all five layers in the OSI model from bottom to up with acoustic wave as the carrier.]
  #zh[使用声波作为传输介质，从 OSI 模型的底层到应用层实现了一个完整的网络协议栈。]
// - #en[Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.]
//   #zh[利用现有的 Rust 异步基础设施，避免了手动控制调度和同步。]
- #en[Created a customized network address translation, achieving bidirectional interaction with the Internet.]
  #zh[实现了一个定制的网络地址转换，与互联网的双向交互，并轻松集成到操作系统，支持常见的传输和应用层协议。]
// #en[- Integrated into the operating system effortlessly, supporting common transportation and application protocols.]
// #zh[- 轻松集成到操作系统中，支持常见的传输和应用层协议。]

#v(-0.5em)

=== Pintos: 
#description[
  #en[An education oriented operating system from Stanford ]
  #zh[x86 平台的多线程操作系统]
] *[#link("https://github.com/profetia/pintos")[code]]*
#h(1fr)
#en[C, Scheduling, Virtual Memory, File System]
#zh[C 语言，线程调度，虚拟内存，文件系统]
\
- #en[Completed core functionalities of an operating system: kernel threads, user programs, virtual memory and file system.]
  #zh[完成了操作系统的核心组件：内核线程、用户程序、虚拟内存、mmap 和文件系统。]

// #v(-0.5em)

// === BusTub:
// #description[
//   #en[A relational database management system from CMU ]
//   #zh[关系型数据库管理系统]
// ]
// #h(1fr)
// #en[Modern C++, Concurrency Control, Query Execution]
// #zh[现代 C++，并发控制，查询优化]
// \
// - #en[Implemented core components of a DBMS: storage management, indexing, query execution and concurrency control.]
//   #zh[实现了数据库管理系统的核心功能，包括存储管理、索引、查询执行和并发控制。]

#v(-0.5em)

=== LBM:
#description[
  #en[A numerical simulation of Computational Fluid Dynamics]
  #zh[基于玻尔兹曼方法的多线程流体动力模拟]
] *[#link("https://github.com/winlere/lbm")[code]]*
#h(1fr)
#en[HPC, Profiling, OpenMP, Micro Architecture]
#zh[高性能计算，性能分析，OpenMP，微架构]
\
- #en[Optimized the simulation with OpenMP parallelization, SIMD vectorization, memory alignment, cache blocking and software pipelining, achieving 20x speed up.]
  #zh[通过 OpenMP 并行化、SIMD 矢量化、内存对齐、缓存阻塞和软件流水线等技术优化，实现了 20 倍的速度提升。]

#zh[#v(3pt)]

== #en[Publications] #zh[发表论文]

- *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) *HPCA'2025* \
  _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) *Under Review* \
  // *Under Review in IEEE International Symposium on High-Performance Computer Architecture 2025*
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* *[#link("https://dl.acm.org/doi/abs/10.1145/3576841.3589611")[paper]] | [#link("https://github.com/Jack0Chan/PyUPPAAL")[code]]* #h(1fr) *ICCPS'2023* \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) *Accepted* \
  // *Accepted by ACM/IEEE International Conference on Cyber-Physical Systems 2023 Poster Session*

#zh[#v(3pt)]

== #en[Miscellaneous] #zh[杂项]
// #zh[熟悉操作系统和计算机体系结构，擅长计算机网络和高性能计算。]
- #en[Skills] #zh[技能]: Python, C, C++, Rust, Go, Typescript, Pytorch, MPI, OpenMP, CUDA, Docker, Linux Kernel, eBPF, Dafny
- #en[Awards] #zh[奖项]:
  - #en[Rank 9/29 (3/29 for my part), ISC'24 Student Cluster Competition] 
    #zh[ISC'24 国际超算竞赛第 9 名（个人负责部分第 3 名）]
    #h(1fr) 2024/04
  // - #en[Outstanding Teaching Assistant, ShanghaiTech University]
  //   #zh[上海科技大学优秀助教]
  //   #h(1fr) 2023/06
  // - #en[Silver Award, ICPC China Silk Road National Invitational 2023] 
  //   #zh[ICPC 中国丝绸之路邀请赛银奖]
  //   #h(1fr) 2023/05
  - #en[Merit Student (Rank 3%-7%), ShanghaiTech University] 
    #zh[2022 年上海科技大学三好学生（3%-7%）]
    #h(1fr) 2022/10
  - #en[Level 6, the 2019 Certified Software Professional Senior Track (formerly NOIP)]
    #zh[2019 年全国青少年信息学奥林匹克联赛提高组 6 级]
    #h(1fr) 2019/12
