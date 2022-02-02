Index: components/policy/core/common/cloud/cloud_policy_client.cc
--- components/policy/core/common/cloud/cloud_policy_client.cc.orig
+++ components/policy/core/common/cloud/cloud_policy_client.cc
@@ -418,7 +418,7 @@ void CloudPolicyClient::FetchPolicy() {
         fetch_request->set_invalidation_payload(invalidation_payload_);
       }
     }
-#if defined(OS_WIN) || defined(OS_MAC) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_MAC) || defined(OS_LINUX) || defined(OS_BSD)
     // Only set browser device identifier for CBCM Chrome cloud policy on
     // desktop.
     if (base::FeatureList::IsEnabled(
