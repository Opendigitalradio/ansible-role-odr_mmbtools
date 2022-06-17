import os

# pylint: disable=import-error
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')

binaries = ['/usr/local/bin/odr-audioenc',
            '/usr/local/bin/odr-padenc',
            '/usr/local/bin/odr-dabmux',
            '/usr/local/bin/odr-zmq2edi',
            ]


def test_binary_file_exists(host):
    for binary in binaries:
        file = host.file(binary)
        assert file.exists
        assert file.user == 'root'
        assert file.group == 'root'
        assert file.mode == 0o755
