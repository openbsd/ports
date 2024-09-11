local banFor(time) = {
  ban: {
    cmd: ['pfctl', '-t', 'blocked_ssh', '-T',  'add', '<ip>'],
  },
  unban: {
    after: time,
    cmd: ['pfctl', '-t', 'blocked_ssh', '-T',  'del', '<ip>'],
  },
};
{
  patterns: {
    ip: {
      regex: @'(?:(?:[ 0-9 ]{1,3}\.){3}[0-9]{1,3})|(?:(?:[a-fA-F0-9]{1,4}:){7}[a-fA-F0-9]{1,4})',
    },
  },
  start: [
  ],
  stop: [
    ['pfctl', '-t', 'blocked_ssh', '-T',  'flush'],
  ],
  streams: {
    ssh: {
      cmd: [ 'tail', '-n0', '-f', '/var/log/authlog' ],
      filters: {
        failedlogin: {
          regex: [
            // Auth fail
            @'Failed password for invalid user .* from <ip>',
            // Client disconnects during authentication
            @'Disconnected from invalid user .* <ip>',
          ],
          retry: 3,
          retryperiod: '6h',
          actions: banFor('48h'),
        },
      },
    },
  },
}
