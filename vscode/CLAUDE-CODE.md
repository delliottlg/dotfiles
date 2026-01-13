# Claude Code VS Code Extension Settings

Configuration for the Claude Code VS Code extension to reduce approval fatigue while staying safe.

## Quick Setup

Copy the contents of `claude-safe-commands.json` into your VS Code `settings.json`:

**Windows:** `%APPDATA%\Code\User\settings.json`
**macOS:** `~/Library/Application Support/Code/User/settings.json`
**Linux:** `~/.config/Code/User/settings.json`

## What Gets Auto-Approved

### File Operations
- `read`: Reading files (low risk)
- `edit`: Editing files (medium risk, but you want this for productivity)

### Commands (allowlist)
All commands in the allowlist are **read-only or informational**:
- File inspection: `ls`, `cat`, `head`, `tail`, `find`, `tree`, `stat`
- Git reads: `git status`, `git log`, `git diff`, `git branch`, `git show`
- Version checks: `node --version`, `python --version`, etc.
- Package inspection: `npm list`, `pip list`, `cargo tree`
- System info: `whoami`, `hostname`, `uname`, `env`, `ps`, `df`
- Network diagnostics: `ping -c`, `nslookup`, `dig`
- GitHub CLI reads: `gh repo view`, `gh pr list`, `gh issue list`

## NEVER Auto-Approve (Danger Zone)

These are intentionally **NOT** in the allowlist:

### Destructive File Operations
- `rm`, `rmdir`, `unlink` - deletion
- `mv` - can overwrite/lose files
- `cp` - can overwrite existing files
- `chmod`, `chown` - permission changes
- `shred` - secure deletion

### Destructive Git Operations
- `git push` - sends code to remote
- `git reset` - can lose commits
- `git checkout` - can discard changes
- `git clean` - deletes untracked files
- `git rebase` - rewrites history
- `git merge` - can cause conflicts

### Package Installation (Arbitrary Code Execution)
- `npm install` - runs postinstall scripts
- `pip install`, `pip3 install` - can execute setup.py
- `uv pip install` - same risk
- `cargo install` - compiles and runs build scripts
- `go install` - compiles code

### Container/Cluster Mutations
- `docker run`, `docker exec` - runs arbitrary containers
- `docker rm`, `docker rmi` - deletion
- `kubectl apply`, `kubectl delete` - cluster changes
- `kubectl exec` - runs commands in pods

### Remote Code Execution Patterns
- `curl | sh`, `curl | bash` - classic RCE
- `wget -O- | sh` - same thing
- `eval $(...)` - dynamic execution

### Privilege Escalation
- `sudo *` - elevated privileges
- `su *` - switch user
- `doas *` - OpenBSD sudo alternative

## Philosophy

The goal is to **eliminate friction for safe operations** while keeping a human in the loop for anything that:

1. **Deletes data** - no undo
2. **Modifies permissions** - security implications
3. **Pushes to remote** - affects others
4. **Installs packages** - runs arbitrary code
5. **Executes containers** - sandboxing concerns
6. **Escalates privileges** - system-wide impact

## Adjusting the List

Feel free to add commands you trust. Some candidates for promotion:

```json
// If you trust your git workflow:
"git add *",
"git commit *",

// If you're in a safe environment:
"npm install",
"pip install *",

// If you live dangerously:
"rm -i *"  // at least it prompts
```

But think twice before adding anything from the danger list.
