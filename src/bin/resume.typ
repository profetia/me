#import "../lib.typ": option, option_ext

#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)
#set par(justify: true)

#let lang = "en"
#option.option("lang", lang)
#let zh(content) = [
  #set text(font: "Microsoft YaHei")
  #option_ext.zh(content)
]
#let en = option_ext.en
#let present = [
  #en[present]
  #zh[至今]
]

#show link: underline
#show heading.where(level: 1): it => [
  #set align(center)
  // #set text(size: 28pt)
  #set text(size: 24pt)
  #it.body
]
#show heading.where(level: 2): it => [
  #v(0.2em)
  // #set text(size: 14pt)
  #set block(above: 0.5em, below: 0.5em)
  #it.body
  #v(-3pt)
  #[
    #set text(style: "normal", weight: "regular")
    #line(length: 100%)
  ]
]
#show heading.where(level: 3): it => [
  #it.body
]
#let normal(it) = [
  #set text(style: "normal", weight: "regular")
  #it
]

#let contact(..its) = {
  let values = its.pos().join(" | ")
  [
    #set align(center)
    // #set text(size: 12pt)
    #set block(above: 0.5em, below: 0.5em)
    #block[
      #align(horizon)[
        #values
      ]
    ]
  ]
}


= #en[Linshu Yang] #zh[杨林树]
#en[#v(-0.5em)]

#contact(
  [yanglsh\@shanghaitech.edu.cn], 
  [#link("https://github.com/profetia")[github.com/profetia]]
)

#en[#v(0.8em)]

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

== #en[Publications] #zh[发表论文]

- *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) *HPCA'2025* \
  _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) *Under Review* \
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* *[#link("https://dl.acm.org/doi/abs/10.1145/3576841.3589611")[paper]] | [#link("https://github.com/Jack0Chan/PyUPPAAL")[code]]* #h(1fr) *ICCPS'2023* \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) *Published* \

#zh[#v(3pt)]

== #en[Research Experience] #zh[科研经历]
=== #en[Max Planck Institute for Informatics, Network and Cloud System Group] #zh[马克思普朗克信息研究所，网络与云系统组]
#h(1fr) 2024/09 -- 2024/11 \
#en[Research Intern, Advised by *Prof. Yiting Xia*] #zh[在夏艺婷教授指导下的科研]
#h(1fr)
#en[Data Center Network, Optical Network, Programmable Switch]
#zh[数据中心网络，光网络，可编程交换机]
\
- #en[Built a realistic evaluation platform for traffic-aware schedulers in DCN with Intel Tofino programmable switches, enabling reliable comparisons between scheduling algorithms such as c-Through and Mordia.]
  #zh[使用 Intel Tofino 可编程交换机构建了一个真实的端到端评估平台，用于数据中心网络中的流量感知调度算法。]
#v(-4pt)
=== #en[ShanghaiTech University, Wireless and Mobile System Lab] #zh[上海科技大学，无线与移动系统实验室]
#h(1fr) 2023/12 -- 2024/08 \
#en[Research Intern, Advised by *Prof. Zhice Yang*] 
#zh[在杨智策教授指导下的科研]
#h(1fr) 
#en[Wireless Networking System, Network Physical System]
#zh[无线网络系统，网络物理系统，操作系统内核]
\
// - #en[Migrated the Precision Time Protocol (PTP) to Bluetooth Low Energy (BLE) on embedded systems by emulating hardware PTP clock with hardware counters.]
//   #zh[在嵌入式系统上利用硬件计数器模拟硬件PTP时钟，将精确时间协议（PTP）迁移到蓝牙低功耗（BLE）上。]
- #en[Identified a bottleneck scenario with eBPF-intensive workloads demonstrating the effectiveness of the proposed ITD-guided scheduler and providing a comprehensive benchmark on virtualization related workloads.]
  #zh[发现了一个 eBPF 密集型工作负载的瓶颈场景，证明了提出的 ITD 引导调度器的有效性，并对虚拟化相关工作负载进行了全面的性能评估。]
- #en[Evaluated the robustness of existing attack methods on newer models of LIDAR, proving their ineffectiveness and built an adversarial device effectively replicating a malfunction of a widely-used commodity LIDAR model.]
  #zh[评估了现有攻击方法对新型激光雷达的鲁棒性，证明了它们的无效性，并构建了一个复现一种广泛使用的激光雷达模型故障的对抗设备。]
#v(-4pt)
=== #en[ShanghaiTech University, Human-Cyber-Physical System Lab] #zh[上海科技大学，人-机-物三元融合实验室]
#h(1fr) 2022/07 -- 2023/06 \
#en[Research Intern, Advised by *Prof. Zhihao Jiang*]
#zh[在江智浩教授指导下的科研]
#h(1fr)
#en[Formal Methods, Model Checking, Cyber-Physical System]
#zh[形式化方法，模型验证，网络物理系统]
\
- #en[Built a Python toolkit to work with UPPAAL with implementation of common use cases and algorithms in CPS.]
  #zh[构建了一个 Python 工具链，用于与 UPPAAL 验证求解器配合使用，实现了网络物理系统中的常见用例和算法。]
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
- Extended dynamic analysis capabilities of the Linux sandbox using customized probing tools in eBPF and kernel modules.
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
#normal[
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
#normal[
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
// #normal[
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
#normal[
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
