#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item

#show: resume

#header(
  name: "Arvinder Dhanoa",
  phone: "651-367-9347",
  email: "ArvinderDhan@gmail.com",
  linkedin: "linkedin.com/in/arvinder-dhanoa-3bb08b223/",
  site: "arvinderd.com",
  github: "github.com/awsomearvinder"
)

#resume_heading[Education]
#edu_item(
  name: "Winona State University",
  degree: "Bachelor's of Science in Computer Science",
  location: "Winona, MN",
  date: "Aug. 2021 - May 2025"
)

#resume_heading[Experience]
#exp_item(
  role: "Lead Student System Administrator",
  name: "Winona State University",
  location: "Winona, MN",
  date: "Oct. 2021 - May 2025",
  [Provisioned and Managed Linux servers for University services including email relay, CMS, and more.],
  [Automated updates and snappshotting on Linux servers using custom-made python REST APIs],
  [Rolled out Ansible, Gitea, and CI/CD based deployment and updates.]
)

#resume_heading("Projects")
#project_item(
  name: "Code Forge",
  skills: "Git, Rust, htmx",
  date: "2023 - Present",
  [A code forge like GitHub, based on a more Gerrit/Phabricator like rebase workflow.],
  [Used to use Svelte for UI, Rest API for interacting with the Git Storage Manager written in rust.],
  [Moved over to htmx + rust backend],
)
#project_item(
  name: "Pantheon-splunk-logger",
  skills: "Splunk, Python, Linux",
  date: "2024",
  [Implement a logger which worked over ssh and python, monitoring for changes in remote files],
  [Pushed logs to Splunk],
  [Written in python, daemon implementing exponential backoff],
)
#project_item(
  name: "checkpointing api",
  skills: "Python, Powershell, AD",
  date: "2024",
  [API that used Active Directory to authenticate against the server],
  [Used to create snapshots before updates by our CI/CD system],
  [Offloaded tasks to self written powershell script, due to lack of hypervisor API],
)
#project_item(
  name: "ebpf-clat",
  skills: "eBPF, Rust, Networking, Linux",
  date: "2025 - Present",
  [An IPv6 transition mechanism developed using eBPF, translates IPv4 TCP/UDP packets to IPv6],
  [Allows IPv4 applications to communicate over an IPv6 network using a NAT64 gateway],
  [Simplifies network configuration by only having one set of firewall rules, IP addresses, etc.],
)
#project_item(
  name: "doas",
  skills: "Rust, Linux",
  date: "2020 - 2021",
  [A self made doas (sudo-like tool) clone from scratch, used to learn parser combinators],
  [Compliant with real doas configuration],
  [Allows controlled privilege escalation on Linux Servers.]
)

#resume_heading("Technical Skills")
#skill_item(
  category: "Languages",
  skills: "Rust, C, C++, Python, Javascript, SQL, Java"
)
#skill_item(
  category: "Frameworks",
  skills: "Node.JS, Flask, eBPF, Svelte, React"
)
#skill_item(
  category: "Developer Tools",
  skills: "Git, Github, Gitea, Github Actions, Vim, Visual Studio Code, Linux, Docker, NixOS, Ansible"
)
#skill_item(
  category: "Misc",
  skills: "Proxmox VE, Linode, Wireguard, LDAP",
)
