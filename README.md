Description
===========

Manages system files


Requirements
============

Needs to be used on a system that utilizes /etc/sysctl.conf and /boot/loader.conf, e.g. FreeBSD.

Attributes
==========

* `[:system][:boot]` - Key, Value.
* `[:system][:periodic]` - Key, Value.
* `[:system][:sysctl]` - Key, Value.


Usage
=====

```json
"run_list": [
    "recipe[system]"
]
```

default
----

Manages system files

Examples
--------

For example role,

```
"default_attributes":{
  ":system": {
    ":periodic": {
      "daily_submit_queuerun": "NO"
    }
  }
}
```

License and Author
==================

Inspiration from Dimitri Aivaliotis http://www.youtube.com/watch?v=0UXh5EnFZrM

Author:: John Ko

Copyright:: 2014, John Ko

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

