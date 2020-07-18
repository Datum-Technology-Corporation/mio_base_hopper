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


`ifndef __UVME_${name_uppercase}_ST_SB_SV__
`define __UVME_${name_uppercase}_ST_SB_SV__


/**
 * Component encapsulating scoreboards which compare ${name_normal_case}
 * DUT's expected (from predictor) vs. actual (monitored) transactions.
 */
class uvme_${name}_st_sb_c extends uvm_scoreboard;
   
   // Objects
   uvme_${name}_st_cfg_c    cfg;
   uvme_${name}_st_cntxt_c  cntxt;
   
   // Sub-scoreboards
   uvme_${name}_st_sb_simplex_c  ${name_1}_sb;
   uvme_${name}_st_sb_simplex_c  ${name_2}_sb;
   
   
   `uvm_component_utils_begin(uvme_${name}_st_sb_c)
      `uvm_field_object(cfg  , UVM_DEFAULT)
      `uvm_field_object(cntxt, UVM_DEFAULT)
      
      `uvm_field_object(${name_1}_sb , UVM_DEFAULT)
      `uvm_field_object(${name_2}_sb, UVM_DEFAULT)
   `uvm_component_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvme_${name}_st_sb", uvm_component parent=null);
   
   /**
    * Create and configures sub-scoreboards via:
    * 1. assign_cfg()
    * 2. assign_cntxt()
    * 3. create_sbs()
    */
   extern virtual function void build_phase(uvm_phase phase);
   
   /**
    * Assigns configuration handles.
    */
   extern virtual function void assign_cfg();
   
   /**
    * Assigns context handles.
    */
   extern virtual function void assign_cntxt();
   
   /**
    * Creates sub-scoreboard components.
    */
   extern virtual function void create_sbs();
   
endclass : uvme_${name}_st_sb_c


`pragma protect begin


function uvme_${name}_st_sb_c::new(string name="uvme_${name}_st_sb", uvm_component parent=null);
   
   super.new(name, parent);
   
endfunction : new


function void uvme_${name}_st_sb_c::build_phase(uvm_phase phase);
   
   super.build_phase(phase);
   
   void'(uvm_config_db#(uvme_${name}_st_cfg_c)::get(this, "", "cfg", cfg));
   if (!cfg) begin
      `uvm_fatal("CFG", "Configuration handle is null")
   end
   
   void'(uvm_config_db#(uvme_${name}_st_cntxt_c)::get(this, "", "cntxt", cntxt));
   if (!cntxt) begin
      `uvm_fatal("CNTXT", "Context handle is null")
   end
   
   assign_cfg  ();
   assign_cntxt();
   create_sbs  ();
   
endfunction : build_phase


function void uvme_${name}_st_sb_c::assign_cfg();
   
   uvm_config_db#(uvm_sb_cfg_c)::set(this, "${name_1}_sb", "cfg", cfg.sb_${name_1}_cfg);
   uvm_config_db#(uvm_sb_cfg_c)::set(this, "${name_2}_sb", "cfg", cfg.sb_${name_2}_cfg);
   
endfunction : assign_cfg


function void uvme_${name}_st_sb_c::assign_cntxt();
   
   uvm_config_db#(uvml_sb_cntxt_c)::set(this, "${name_1}_sb", "cntxt", cntxt.sb_${name_1}_cntxt);
   uvm_config_db#(uvml_sb_cntxt_c)::set(this, "${name_2}_sb", "cntxt", cntxt.sb_${name_2}_cntxt);
   
endfunction : assign_cntxt


function void uvme_${name}_st_sb_c::create_sbs();
   
   ${name_1}_sb = uvme_${name}_st_sb_simplex_c::type_id::create("${name_1}_sb", this);
   ${name_2}_sb = uvme_${name}_st_sb_simplex_c::type_id::create("${name_2}_sb", this);
   
endfunction : create_sbs


`pragma protect end


`endif // __UVME_${name_uppercase}_ST_SB_SV__
