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


`ifndef __UVMA_${name_uppercase}_TDEFS_SV__
`define __UVMA_${name_uppercase}_TDEFS_SV__


typedef enum int unsigned {
   UVMA_${name_uppercase}_LOGGING_DEPTH_AGENT,
   UVMA_${name_uppercase}_LOGGING_DEPTH_LAYER,
   UVMA_${name_uppercase}_LOGGING_DEPTH_FULL
} uvma_${name}_logging_depth_enum;

typedef enum {
   UVMA_${name_uppercase}_LAYER_${layer_name_uppercase}
} uvma_${name}_layer_enum;

typedef enum {
   UVMA_${name_uppercase}_DIRECTION_${direction_rx_uppercase},
   UVMA_${name_uppercase}_DIRECTION_${direction_tx_uppercase}
} uvma_${name}_direction_enum;


`endif // __UVMA_${name_uppercase}_TDEFS_SV__