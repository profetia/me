#import "@preview/fontawesome:0.1.0": *
#import "../option/mod.typ": ext
#import "../lib.typ": option

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
  #ext.lang.zh(content)
]
#let en(content) = [
  #ext.lang.en(content)
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
  #github #link("https://github.com/mousany")[github.com/mousany] 
]

#en[#v(0.5em)]

== #en[Education] #zh[教育经历]

#en[=== ShanghaiTech University]
#zh[=== 上海科技大学]
#h(1fr) 2021/09 -- #present \
#en[Bachelor of Engineering in Computer Science and Technology ]
#zh[计算机科学与技术工程学士]
#h(1fr) 
GPA 3.69/4.0 #h(5pt) 
#en[TOFEL] #zh[托福] 108
- #en[Relevant Courses: Algorithm and Data Structure, Computer Architecture, Software Engineering, Computer Networks, \ 
  #h(83pt) Operating System, Parallel Computing, Database Systems, Deep Learning]
  #zh[相关课程：算法与数据结构，软件工程，计算机网络，操作系统，并行计算，数据库，深度学习]

#zh[#v(3pt)]

== #en[Research Experience] #zh[科研经历]
=== #en[Wireless and Mobile System Lab] #zh[无线与移动系统实验室]
#h(1fr) 2023/12 -- #present \
#en[Research Intern, Advised by Prof. Zhice Yang] 
#zh[在杨智策教授指导下的科研]
#h(1fr) 
#en[Wireless Networking System, Cyber-Physical System]
#zh[无线网络系统，网络物理系统，嵌入式系统]
\
- #en[Migrated the Precision Time Protocol (PTP) to Bluetooth Low Energy (BLE) on embedded systems by emulating hardware PTP clock with hardware counters.]
  #zh[在嵌入式系统上利用硬件计数器模拟硬件PTP时钟，将精确时间协议（PTP）迁移到蓝牙低功耗（BLE）上。]
- #en[Explored possible attack methods to exploit the vulnerability of a popular commercial LIDAR model.]
  #zh[探索了多种可能的攻击方法，利用一款流行的商用激光雷达的漏洞。]

#v(-1pt)

=== #en[Human-Cyber-Physical System Lab] #zh[人-机-物三元融合实验室]
#h(1fr) 2022/07 -- 2023/06 \
#en[Research Intern, Advised by Prof. Zhihao Jiang]
#zh[在江智浩教授指导下的科研]
#h(1fr)
#en[Formal Methods, Model Checking, Cyber-Physical System]
#zh[形式化方法，模型验证，网络物理系统]
\
- #en[Maintained a Python library for verification of time automata and partially observable systems.]
  #zh[维护了一个基于 UPPAAL 验证求解器的时间自动机模型验证工具链。]
- #en[Implemented and optimized a novel model-checking based cardiac diagnoser to achieve real-time analysis and diagnosis on cardiac electrical signals.]
  #zh[实现并优化了一种基于抽象细化模型验证方法的错误诊断算法，并应用于对心脏电信号的实时分析和诊断。]
- #en[Deployed a Kubernetes cluster to manage applications of HCPS Lab, providing TLS certificate automation, persistent volumes and load balancers.]
  #zh[部署了一个 Kubernetes 集群，用于管理实验室的应用，提供自动化 TLS 证书、持久卷和负载均衡器。]
  
#zh[#v(3pt)]

== #en[Work Experience] #zh[工作经历]

=== #en[Keen Security Lab, Tencent] #zh[腾讯科恩安全实验室]
#h(1fr) 2024/04 -- 2024/07 \
#en[System R&D Intern, Tactic Intelligence Team] #zh[情报系统研发实习]
#h(1fr) 
#en[Malware Analysis, Linux, eBPF] #zh[恶意代码分析，Linux，eBPF]
#en[
- Renovated the abandoned Linux sandbox to support the newer kernel versions.
- Extended the dynamic memory analysis capability of the sandbox with kernel modules and eBPF.
]
#zh[
- 翻新了被废弃的 Linux 沙箱以支持新的内核版本，并通过内核模块和 eBPF 扩展了沙箱的动态内存分析能力。
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

=== #link("https://github.com/mousany/rathernet")[Rathernet]: 
#description[
  #en[An acoustic userspace network stack written in Rust]
  #zh[基于声波传输的用户空间网络协议栈]
] 
#h(1fr)
#en[Rust, Wireless Network, Network Protocol]
#zh[Rust，无线网络，网络协议]
\
#v(1pt)
- #en[Implemented all five layers in the OSI model from bottom to up with acoustic wave as the carrier.]
  #zh[使用声波作为传输介质，从 OSI 模型的底层到应用层实现了一个完整的网络协议栈。]
// - #en[Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.]
//   #zh[利用现有的 Rust 异步基础设施，避免了手动控制调度和同步。]
- #en[Created a customized network address translation, achieving bidirectional interaction with the Internet.]
  #zh[实现了一个定制的网络地址转换，实现了与互联网的双向交互。]
- #en[Integrated into the operating system effortlessly, supporting common transportation and application protocols.]
  #zh[轻松集成到操作系统中，支持常见的传输和应用层协议。]

#v(-1pt)

=== #link("https://github.com/mousany/pintos")[Pintos]: 
#description[
  #en[An education oriented operating system from Stanford ]
  #zh[x86 平台的多线程操作系统]
]
#h(1fr)
#en[C, Thread Scheduling, Virtual Memory, File System]
#zh[C 语言，线程调度，虚拟内存，文件系统]
\
#v(1pt)
- #en[Completed core functionalities of an operating system: kernel threads, user programs, virtual memory and file system.]
  #zh[完成了操作系统的核心组件：内核线程、用户程序、虚拟内存、mmap 和文件系统。]

#v(-1pt)

=== BusTub:
#description[
  #en[A relational database management system from CMU ]
  #zh[关系型数据库管理系统]
]
#h(1fr)
#en[Modern C++, Concurrency Control, Query Execution]
#zh[现代 C++，并发控制，查询优化]
\
#v(1pt)
- #en[Implemented core components of a DBMS: storage management, indexing, query execution and concurrency control.]
  #zh[实现了数据库管理系统的核心功能，包括存储管理、索引、查询执行和并发控制。]

#v(-1pt)

=== #link("https://github.com/winlere/lbm")[LBM]:
#description[
  #en[A numerical simulation of Computational Fluid Dynamics]
  #zh[基于玻尔兹曼方法的多线程流体动力模拟]
]
#h(1fr)
#en[HPC, Profiling, OpenMP, Micro Architecture]
#zh[高性能计算，性能分析，OpenMP，微架构]
\
#v(1pt)
- #en[Optimized the simulation with OpenMP parallelization, SIMD vectorization, memory alignment, cache blocking and software pipelining, achieving 20x speed up.]
  #zh[通过 OpenMP 并行化、SIMD 矢量化、内存对齐、缓存阻塞和软件流水线等技术优化，实现了 20 倍的速度提升。]

#zh[#v(3pt)]

== #en[Publication] #zh[发表论文]

- Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang. *"pyUPPAAL: A Python Package for Risk Analysis of CPS"*, _in ICCPS '23: Proceedings of the ACM/IEEE 14th International Conference on Cyber-Physical Systems (with CPS-IoT Week 2023)_

#zh[#v(3pt)]

== #en[Miscellaneous] #zh[杂项]
#zh[熟悉操作系统和计算机体系结构，擅长计算机网络和网络分布式系统。]
- #en[Skills] #zh[技能]: Python, Rust, C, C++, Typescript, Go, Pytorch, MPI, OpenMP, CUDA, Kubernetes, Docker, Postgres
- #en[Awards] #zh[奖项]:
  - #en[Rank 9/29 (4/29 for my part), ISC24 Student Cluster Competition] 
    #zh[ISC24 国际超算竞赛第 9 名（个人负责部分第 3 名）]
    #h(1fr) 2024/04
  - #en[Outstanding Teaching Assistant, ShanghaiTech University]
    #zh[上海科技大学优秀助教]
    #h(1fr) 2023/06
  - #en[Silver Award, ICPC China Silk Road National Invitational 2023] 
    #zh[ICPC 中国丝绸之路邀请赛银奖]
    #h(1fr) 2023/05
  - #en[Outstanding Student, ShanghaiTech University] 
    #zh[上海科技大学优秀学生]
    #h(1fr) 2022/10
