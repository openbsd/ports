#include <internal/facts/openbsd/virtualization_resolver.hpp>
#include <facter/facts/scalar_value.hpp>
#include <facter/facts/collection.hpp>
#include <facter/facts/fact.hpp>
#include <facter/facts/vm.hpp>
#include <facter/execution/execution.hpp>
#include <boost/algorithm/string.hpp>

using namespace std;
using namespace facter::facts;
using namespace facter::execution;

namespace facter { namespace facts { namespace openbsd {

    string virtualization_resolver::get_hypervisor(collection& facts)
    {
        string value = get_product_name_vm(facts);

        return value;
    }

    string virtualization_resolver::get_product_name_vm(collection& facts)
    {
        static vector<tuple<string, string>> vms = {
            make_tuple("VMware",            string(vm::vmware)),
            make_tuple("VirtualBox",        string(vm::virtualbox)),
            make_tuple("Parallels",         string(vm::parallels)),
            make_tuple("KVM",               string(vm::kvm)),
            make_tuple("Virtual Machine",   string(vm::hyperv)),
            make_tuple("RHEV Hypervisor",   string(vm::redhat_ev)),
            make_tuple("oVirt Node",        string(vm::ovirt)),
            make_tuple("HVM domU",          string(vm::xen_hardware)),
            make_tuple("Bochs",             string(vm::bochs)),
        };

        auto product_name = facts.get<string_value>(fact::product_name);
        if (!product_name) {
            return {};
        }

        auto const& value = product_name->value();

        for (auto const& vm : vms) {
            if (value.find(get<0>(vm)) != string::npos) {
                return get<1>(vm);
            }
        }
        return {};
    }

} } }  // namespace facter::facts::openbsd
