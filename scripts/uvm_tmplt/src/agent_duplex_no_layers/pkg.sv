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


`ifndef __UVMA_${name_uppercase}_PKG_SV__
`define __UVMA_${name_uppercase}_PKG_SV__


// Pre-processor macros
`include "uvm_macros.svh"
`include "uvml_hrtbt_macros.sv"
`include "uvml_trn_macros.sv"
`include "uvml_logs_macros.sv"
`include "uvma_reset_macros.sv"
`include "uvma_${name}_macros.sv"

// Interface(s) / Module(s) / Checker(s)
`include "uvma_${name}_if.sv"
`ifdef UVMA_${name_uppercase}_INC_IF_CHKR
`include "uvma_${name}_if_chkr.sv"
`endif


/**
 * Encapsulates all the types needed for an UVM agent capable of driving and/or
 * monitoring both directions of ${name_normal_case}.
 */
package uvma_${name}_pkg;
   
   import uvm_pkg       ::*;
   import uvml_hrtbt_pkg::*;
   import uvml_trn_pkg  ::*;
   import uvml_logs_pkg ::*;
   import uvma_reset_pkg::*;
   
   // Constants / Structs / Enums
   `include "uvma_${name}_constants.sv"
   `include "uvma_${name}_tdefs.sv"
   
   // Objects
   `include "uvma_${name}_cfg_simplex.sv"
   `include "uvma_${name}_cfg.sv"
   `include "uvma_${name}_cntxt_simplex.sv"
   `include "uvma_${name}_cntxt.sv"
   
   // High-level transactions
   `include "uvma_${name}_mon_trn.sv"
   `include "uvma_${name}_mon_trn_logger.sv"
   `include "uvma_${name}_seq_item.sv"
   `include "uvma_${name}_seq_item_logger.sv"
   
   // Agent components
   `include "uvma_${name}_cov_model.sv"
   `include "uvma_${name}_drv.sv"
   `include "uvma_${name}_mon.sv"
   `include "uvma_${name}_sqr.sv"
   `include "uvma_${name}_agent.sv"
   
   // Sequences
   `include "uvma_${name}_base_seq.sv"
   `include "uvma_${name}_seq_lib.sv"
   
endpackage : uvma_${name}_pkg


`endif // __UVMA_${name_uppercase}_PKG_SV__
