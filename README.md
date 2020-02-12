# Ansible Role: ODR mmbtools

[![Build Status](https://travis-ci.org/fauust/ansible-role-odr_mmbtools.svg?branch=master)](https://travis-ci.org/fauust/ansible-role-odr_mmbtools)

An Ansible Role that install ODR tools (https://github.com/Opendigitalradio).

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see
`defaults/main.yml`):

    odr_mmbtools_need_fdk_acc: true

In future versions of ODR tools, the dependency on fdk-acc will be removed.

    odr_mmbtools_fdk_acc_tag: v0.1.6-dab

The version of fdk_acc to install (https://github.com/Opendigitalradio/fdk-aac).

    odr_mmbtools_AudioEnc_tag: v2.4.1

The version of ODR_AudioEnc to install
(https://github.com/Opendigitalradio/ODR-AudioEnc).

    odr_mmbtools_PadEnc_tag: v2.3.0

The version of ODR_PadEnc to install
(https://github.com/Opendigitalradio/ODR-PadEnc).

    odr_mmbtools_EncoderManager_tag: ansible_installation

The version of ODR_EncoderManager to install
(https://github.com/fauust/ODR-EncoderManager).

    odr_mmbtools_DabMux_tag: v3.0.1

The version of ODR_DabMux to install
(https://github.com/Opendigitalradio/ODR-DabMux).

    odr_mmbtools_supervisor_http_username: admin
    odr_mmbtools_supervisor_http_password: admin

Supervisor HTTP admin interface credentials.

## Dependencies

None.

## Example Playbook

    - hosts: servers
      roles:
         - odr_mmbtools

## License

GNU General Public License v3.0

## Author Information

fauust
