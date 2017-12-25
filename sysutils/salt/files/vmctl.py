# -*- coding: utf-8 -*-
# $OpenBSD: vmctl.py,v 1.1 2017/12/25 13:06:16 jasper Exp $
'''
Manage vms running on the OpenBSD VMM hypervisor using vmctl(8).

.. note::
    
    This module requires the `vmd` service to be running on the OpenBSD
    target machine.
'''

from __future__ import absolute_import

# Import python libs
import logging
import re

# Imoprt salt libs:
import salt.utils
from salt.exceptions import (CommandExecutionError, SaltInvocationError)

log = logging.getLogger(__name__)


def __virtual__():
    '''
    Only works on OpenBSD with vmctl(8) present.
    '''
    if __grains__['os'] == 'OpenBSD' and salt.utils.which('vmctl'):
        return True

    return (False, 'The vmm execution module cannot be loaded: either the system is not OpenBSD or the vmctl binary was not found')


def create_disk(name, size):
    '''
    Create a VMM disk with the specified `name` and `size`.

    size:
        Size in megabytes, or use a specifier such as M, G, T.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.create_disk /path/to/disk.img size=10G
    '''
    ret = {'created': False}
    cmd = 'vmctl create {0} -s {1}'.format(name, size)

    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)

    if result['retcode'] == 0:
        ret['created'] = True
    else:
        raise CommandExecutionError(
            'Problem encountered creating disk image',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret


def load(path):
    '''
    Load additional configuration from the specified file.

    path
        Path to the configuration file.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.load path=/etc/vm.switches.conf
    '''
    ret = {'loaded': False, 'path': path}
    cmd = 'vmctl load {0}'.format(path)
    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)
    if result['retcode'] == 0:
        ret['changes'] = True
    else:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret


def reload():
    '''
    Remove all stopped VMs and reload configuration from the default configuration file.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.reload
    '''
    ret = {'changes': False}
    cmd = 'vmctl reload'
    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)
    if result['retcode'] == 0:
        ret['changes'] = True
    else:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret


def reset(all=False, vms=False, switches=False):
    '''
    Reset the running state of VMM or a subsystem.

    all:
        Reset the running state.

    switches:
        Reset the configured switches.

    vms:
        Reset and terminate all VMs.
    

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.reset all=True
    '''
    ret = {'changes': False}
    cmd = ['vmctl', 'reset']

    if all:
        cmd.append('all')
    elif vms:
        cmd.append('vms')
    elif switches:
        cmd.append('switches')

    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)
    if result['retcode'] == 0:
        ret['changes'] = True
    else:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret


def start(name=None, id=None, bootpath=None, disk=None, disks=[], local_iface=False,
          memory=None, nics=0, switch=None):
    '''
    Starts a VM defined by the specified parameters.
    When both a name and id are provided, the id is ignored.

    name:
        Name of the defined VM.

    id:
        VM id.

    bootpath:
        Path to a kernel or BIOS image to load.

    disk:
        Path to a single disk to use.

    disks:
        List of multiple disks to use.

    local_iface:
        Whether to add a local network interface. See "LOCAL INTERFACES"
        in the vmctl(8) manual page for more information.

    memory:
        Memory size of the VM specified in megabytes.

    switch:
        Add a network interface that is attached to the specified
        virtual switch on the host.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.load path=/etc/vm.switches.conf
    '''
    ret = {'changes': False, 'console': None}
    cmd = ['vmctl', 'start']

    if not (name or id):
        raise SaltInvocationError('Must provide either "name" or "id"')
    elif name:
        cmd.append(name)
    else:
        cmd.append(id)

    if nics > 0:
        cmd.append('-i {0}'.format(nics))

    # Paths cannot be appended as otherwise the inserted whitespace is treated by
    # vmctl as being part of the path.
    if bootpath:
        cmd.extend(['-b', bootpath])

    if memory:
        cmd.append('-m {0}'.format(memory))

    if switch:
        cmd.append('-n {0}'.format(switch))

    if local_iface:
        cmd.append('-L')

    if disk and len(disks) > 0:
        raise SaltInvocationError('Must provide either "disks" or "disk"')

    if disk:
        cmd.extend(['-d', disk])

    if len(disks) > 0:
         cmd.extend(['-d', x] for x in disks)

    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)

    if result['retcode'] == 0:
        ret['changes'] = True
        m = re.match(r'.*successfully, tty (\/dev.*)', result['stderr'])
        if m:
            ret['console'] = m.groups()[0]
        else:
            m = re.match(r'.*Operation already in progress$', result['stderr'])
            if m:
                ret['changes'] = False
    else:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret


def status(name=None, id=None):
    '''
    List VMs running on the host, or only the VM specified by ``id''.
    When both a name and id are provided, the id is ignored.

    name:
        Name of the defined VM.

    id:
        VM id.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.load path=/etc/vm.switches.conf
    '''
    ret = {}
    cmd = ['vmctl', 'status']

    if not (name or id):
        raise SaltInvocationError('Must provide either "name" or "id"')
    elif name:
        cmd.append(name)
    else:
        cmd.append(id)

    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)

    if result['retcode'] != 0:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'error': [result['stderr']], 'changes': ret}
        )

    # Grab the header and save it with the lowercase names.
    header = result['stdout'].splitlines()[0].split()
    header = list(map(lambda x: x.lower(), header)) 

    # A VM can be in one of the following states (from vmm.c:vcpu_state_decode())
    # - stopped
    # - running
    # - requesting termination
    # - terminated
    # - unknown

    # When the status is requested of a single VM, the last lines contain info
    # on the the vcpu state which is not relevant for us.
    if id or name:
        output = [result['stdout'].splitlines()[1]]
    else:
        output = result['stdout'].splitlines()[1:]

    for line in output:
        data = line.split()
        vm = dict(zip(header, data))
        vmname = vm.pop('name')
        if vm['pid'] == '-':
            # If the VM has no PID it's not running.
            vm['state'] = 'stopped'
        elif vmname and data[-2] == '-':
            # When a VM does have a PID and the second to last field is a '-', it's
            # transitioning to another state. A VM name itself cannot contain a
            # '-' so it's safe to split on '-'.
            vm['state'] = data[-1]
        else:
            vm['state'] = 'running'
        ret[vmname] = vm

    return ret


def stop(name=None, id=None):
    '''
    Stop (terminate) the VM identified by the given id or name.
    When both a name and id are provided, the id is ignored.

    name:
        Name of the defined VM.

    id:
        VM id.

    CLI Example:

    .. code-block:: bash

        salt '*' vmctl.stop name=alpine
    '''
    ret = {}
    cmd = ['vmctl', 'stop']
    
    if not (name or id):
        raise SaltInvocationError('Must provide either "name" or "id"')
    elif name:
        cmd.append(name)
    else:
        cmd.append(id)

    result = __salt__['cmd.run_all'](cmd,
                                     output_loglevel='trace',
                                     python_shell=False)

    if result['retcode'] == 0:
        if re.match('^vmctl: sent request to terminate vm.*', result['stderr']):
            ret['changes'] = True
        else:
            ret['changes'] = False
    else:
        raise CommandExecutionError(
            'Problem encountered running vmctl',
            info={'errors': [result['stderr']], 'changes': ret}
        )

    return ret
