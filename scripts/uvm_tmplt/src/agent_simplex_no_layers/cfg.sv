// 
// ${copyright_header}
// Copyright 2020 Datum Technology Corporation
// 
// Licensed under the Solderpad Hardware License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// 


`ifndef __UVMA_${name_uppercase}_CFG_SV__
`define __UVMA_${name_uppercase}_CFG_SV__


/**
 * Object encapsulating all parameters for creating, connecting and running all
 * ${name_normal_case} agent (uvma_${name}_agent_c) components.
 */
class uvma_${name}_cfg_c extends uvm_object;
   
   // Generic options
   rand bit                      enabled;
   rand uvm_active_passive_enum  is_active;
   rand uvm_sequencer_arb_mode   sqr_arb_mode;
   rand bit                      cov_model_enabled;
   rand bit                      trn_log_enabled;
   
   
   `uvm_object_utils_begin(uvma_${name}_cfg_c)
      `uvm_field_int (                         enabled          , UVM_DEFAULT)
      `uvm_field_enum(uvm_active_passive_enum, is_active        , UVM_DEFAULT)
      `uvm_field_enum(uvm_sequencer_arb_mode , sqr_arb_mode     , UVM_DEFAULT)
      `uvm_field_int (                         cov_model_enabled, UVM_DEFAULT)
      `uvm_field_int (                         trn_log_enabled  , UVM_DEFAULT)
   `uvm_object_utils_end
   
   
   constraint defaults_cons {
      soft enabled           == 1;
      soft is_active         == UVM_PASSIVE;
      soft sqr_arb_mode      == UVM_SEQ_ARB_FIFO;
      soft cov_model_enabled == 0;
      soft trn_log_enabled   == 1;
   }
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvma_${name}_cfg");
   
endclass : uvma_${name}_cfg_c


`pragma protect begin


function uvma_${name}_cfg_c::new(string name="uvma_${name}_cfg");
   
   super.new(name);
   
endfunction : new


`pragma protect end


`endif // __UVMA_${name_uppercase}_CFG_SV__
