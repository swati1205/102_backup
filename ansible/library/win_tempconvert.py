#!/usr/bin/python
#-*- coding: utf-8 -*-#
# This file is part of Ansible
## Ansible is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ansible is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ansible.  If not, see <http://www.gnu.org/licenses/>.

# this is a windows documentation stub.  actual code lives in the .ps1
# file of the same name
DOCUMENTATION = '''
---
module: win_tempconvert
version_addes: "1.0"
short_description: Convert the temp 
description: 
    - Uses input value of temperature and convert to Celcius or Farhenheit as required.
options:
 choice:
     description: 
       - Value of temp variable to convert.
     required: true
     default: no default 
author: "Swati Bhandari"
notes: 
   - This module helps in converting temperature from cel to far or vice-versa.
'''

EXAMPLE = '''
   # Convert temperature
   win_tempconvert:
      choice: '0C'
'''

RETURN = '''
'''
