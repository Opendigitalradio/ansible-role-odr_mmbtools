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
        f = host.file(binary)
        assert f.exists
        assert f.user == 'root'
        assert f.group == 'root'
        assert f.mode == 0o755


def test_port_listening(host):
    assert host.socket("tcp://0.0.0.0:8080").is_listening
    assert host.socket("tcp://0.0.0.0:9001").is_listening


def test_service_enabled_and_running(host):
    assert host.service("supervisor").is_enabled
    assert host.service("supervisor").is_running
