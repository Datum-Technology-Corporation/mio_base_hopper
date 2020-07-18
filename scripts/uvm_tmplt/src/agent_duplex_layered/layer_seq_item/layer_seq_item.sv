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


`ifndef __UVMA_${name_uppercase}_LAYER_SEQ_ITEM_${layer_name_uppercase}_SV__
`define __UVMA_${name_uppercase}_LAYER_SEQ_ITEM_${layer_name_uppercase}_SV__


/**
 * Sequence item used by sequences, sequencer and driver.
 */
class uvma_${name}_layer_seq_item_${layer_name}_c extends uvm_trn_seq_item_c;
   
   
   
   
   `uvm_object_utils_begin(uvma_${name}_layer_seq_item_${layer_name}_c)
      
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvma_${name}_layer_seq_item_${layer_name}");
   
endclass : uvma_${name}_layer_seq_item_${layer_name}_c


`pragma protect begin


function uvma_${name}_layer_seq_item_${layer_name}_c::new(string name="uvma_${name}_layer_seq_item_${layer_name}");
   
   super.new(name);
   
endfunction : new


`pragma protect end


`endif // __UVMA_${name_uppercase}_LAYER_SEQ_ITEM_${layer_name_uppercase}_SV__
