// 
// Copyright 2021 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the "License"); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVML_SB_CFG_SV__
`define __UVML_SB_CFG_SV__


/**
 * TODO Describe uvml_sb_cfg_c
 */
class uvml_sb_cfg_c extends uvm_object;
   
   rand bit                enabled;
   rand uvml_sb_mode_enum  mode;
   rand int unsigned       ignore_first_n_act;
   rand int unsigned       ignore_first_n_exp;
   
   
   
   `uvm_object_utils_begin(uvml_sb_cfg_c)
      `uvm_field_int (                   enabled           , UVM_DEFAULT)
      `uvm_field_enum(uvml_sb_mode_enum, mode              , UVM_DEFAULT)
      `uvm_field_int (                   ignore_first_n_act, UVM_DEFAULT)
      `uvm_field_int (                   ignore_first_n_exp, UVM_DEFAULT)
   `uvm_object_utils_end
   
   
   constraint defaults_cons {
      soft ignore_first_n_act == 0;
      soft ignore_first_n_exp == 0;
   }
   
   
   /**
    * Default constructor
    */
   extern function new(string name="uvml_sb_cfg");
   
endclass : uvml_sb_cfg_c


function uvml_sb_cfg_c::new(string name="uvml_sb_cfg");
  
  super.new(name);
  
endfunction : new


`endif // __UVML_SB_CFG_SV__
