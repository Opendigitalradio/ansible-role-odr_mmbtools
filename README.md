# Ansible Role: ODR mmbtools

[![travis build status](https://img.shields.io/travis/fauust/ansible-role-odr_mmbtools?logo=travis)](https://travis-ci.org/fauust/ansible-role-odr_mmbtools)

An Ansible Role that install ODR tools (<https://github.com/Opendigitalradio>).

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see
`defaults/main.yml`):

```yaml
odr_mmbtools_need_fdk_acc: true
```

In future versions of ODR tools, the dependency on fdk-acc will be removed.

```yaml
odr_mmbtools_fdk_acc_tag: v0.1.6-dab
```

The version of fdk_acc to install (<https://github.com/Opendigitalradio/fdk-aac>).

```yaml
odr_mmbtools_AudioEnc_tag: v2.4.1
```

The version of ODR_AudioEnc to install
(<https://github.com/Opendigitalradio/ODR-AudioEnc>).

```yaml
odr_mmbtools_PadEnc_tag: v2.3.0
```

The version of ODR_PadEnc to install
(<https://github.com/Opendigitalradio/ODR-PadEnc>).

```yaml
odr_mmbtools_EncoderManager_tag: ansible_installation
```

The version of ODR_EncoderManager to install
(<https://github.com/fauust/ODR-EncoderManager>).

```yaml
odr_mmbtools_DabMux_tag: v3.0.1
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
     - odr_mmbtools
```

## License

GNU General Public License v3.0

## Author Information

fauust
