# Ansible Role: ODR mmbtools

[![Build Status](https://travis-ci.org/fauust/ansible-role-odr_mmbtools.svg?branch=master)](https://travis-ci.org/fauust/ansible-role-odr_mmbtools)

An Ansible Role that install ODR tools (https://github.com/Opendigitalradio).

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see
`defaults/main.yml`):

    fdk_acc_tag: v0.1.6-dab

The version of fdk_acc to install (https://github.com/Opendigitalradio/fdk-aac).

    ODR_AudioEnc_tag: v2.4.1

The version of ODR_AudioEnc to install
(https://github.com/Opendigitalradio/ODR-AudioEnc).

    ODR_PadEnc_tag: v2.3.0

The version of ODR_PadEnc to install
(https://github.com/Opendigitalradio/ODR-PadEnc).

    ODR_EncoderManager_tag: ansible_installation

The version of ODR_EncoderManager to install
(https://github.com/fauust/ODR-EncoderManager).

    ODR_DabMux_tag: v3.0.1

The version of ODR_DabMux to install
(https://github.com/Opendigitalradio/ODR-DabMux).

    encoder_supervisor_http_username: admin
    encoder_supervisor_http_password: admin

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
