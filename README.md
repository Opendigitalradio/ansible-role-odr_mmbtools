# Ansible Role: ODR mmbtools

[![pre-commit](https://github.com/Opendigitalradio/ansible-role-odr_mmbtools/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/Opendigitalradio/ansible-role-odr_mmbtools/actions/workflows/pre-commit.yml)
[![molecule](https://github.com/Opendigitalradio/ansible-role-odr_mmbtools/actions/workflows/molecule.yml/badge.svg)](https://github.com/Opendigitalradio/ansible-role-odr_mmbtools/actions/workflows/molecule.yml)

An Ansible Role that install ODR tools (<https://github.com/Opendigitalradio>).

This role is available from Ansible Galaxy
(<https://galaxy.ansible.com/fauust/odr_mmbtools>).

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see
`defaults/main.yml`):

```yaml
odr_mmbtools_AudioEnc_tag: v3.1.0
```

The version of ODR_AudioEnc to install
(<https://github.com/Opendigitalradio/ODR-AudioEnc>).

```yaml
odr_mmbtools_PadEnc_tag: v3.0.0
```

The version of ODR_PadEnc to install
(<https://github.com/Opendigitalradio/ODR-PadEnc>).

```yaml
odr_mmbtools_EncoderManager_tag: ansible_installation
```

The version of ODR_EncoderManager to install
(<https://github.com/fauust/ODR-EncoderManager>).

```yaml
odr_mmbtools_DabMux_tag: v3.1.1
```

The version of ODR_DabMux to install
(<https://github.com/Opendigitalradio/ODR-DabMux>).

```yaml
odr_mmbtools_supervisor_http_username: admin
odr_mmbtools_supervisor_http_password: admin
```

Supervisor HTTP admin interface credentials.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: servers
  roles:
    - fauust.odr_mmbtools
```

## License

## GNU General Public License v3.0
