Index: content/common/sandbox_init_linux.cc
--- content/common/sandbox_init_linux.cc.orig
+++ content/common/sandbox_init_linux.cc
@@ -16,11 +16,15 @@ namespace content {
 
 bool InitializeSandbox(std::unique_ptr<sandbox::bpf_dsl::Policy> policy,
                        base::ScopedFD proc_fd) {
+#if !defined(OS_BSD)
   return sandbox::policy::SandboxSeccompBPF::StartSandboxWithExternalPolicy(
       std::move(policy), std::move(proc_fd));
+#else
+  return false;
+#endif
 }
 
-#if !defined(OS_NACL_NONSFI)
+#if !defined(OS_NACL_NONSFI) && !defined(OS_BSD)
 std::unique_ptr<sandbox::bpf_dsl::Policy> GetBPFSandboxBaselinePolicy() {
   return sandbox::policy::SandboxSeccompBPF::GetBaselinePolicy();
 }
