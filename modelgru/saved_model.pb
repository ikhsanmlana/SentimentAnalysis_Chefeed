’ļ(
é¾
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Į
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ø

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018ó'

Adam/gru_7/gru_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/gru_7/gru_cell_7/bias/v

0Adam/gru_7/gru_cell_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_7/gru_cell_7/bias/v*
_output_shapes
:	*
dtype0
­
(Adam/gru_7/gru_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*9
shared_name*(Adam/gru_7/gru_cell_7/recurrent_kernel/v
¦
<Adam/gru_7/gru_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_7/gru_cell_7/recurrent_kernel/v*
_output_shapes
:	.*
dtype0

Adam/gru_7/gru_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*/
shared_name Adam/gru_7/gru_cell_7/kernel/v

2Adam/gru_7/gru_cell_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_7/gru_cell_7/kernel/v*
_output_shapes
:	2*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ų#*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes
:	ų#*
dtype0

Adam/gru_7/gru_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/gru_7/gru_cell_7/bias/m

0Adam/gru_7/gru_cell_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_7/gru_cell_7/bias/m*
_output_shapes
:	*
dtype0
­
(Adam/gru_7/gru_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*9
shared_name*(Adam/gru_7/gru_cell_7/recurrent_kernel/m
¦
<Adam/gru_7/gru_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_7/gru_cell_7/recurrent_kernel/m*
_output_shapes
:	.*
dtype0

Adam/gru_7/gru_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*/
shared_name Adam/gru_7/gru_cell_7/kernel/m

2Adam/gru_7/gru_cell_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_7/gru_cell_7/kernel/m*
_output_shapes
:	2*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ų#*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes
:	ų#*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Č*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Č*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Č*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Č*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

gru_7/gru_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_namegru_7/gru_cell_7/bias

)gru_7/gru_cell_7/bias/Read/ReadVariableOpReadVariableOpgru_7/gru_cell_7/bias*
_output_shapes
:	*
dtype0

!gru_7/gru_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*2
shared_name#!gru_7/gru_cell_7/recurrent_kernel

5gru_7/gru_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_7/gru_cell_7/recurrent_kernel*
_output_shapes
:	.*
dtype0

gru_7/gru_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*(
shared_namegru_7/gru_cell_7/kernel

+gru_7/gru_cell_7/kernel/Read/ReadVariableOpReadVariableOpgru_7/gru_cell_7/kernel*
_output_shapes
:	2*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
{
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ų#* 
shared_namedense_17/kernel
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	ų#*
dtype0

NoOpNoOp
 :
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ū9
valueŃ9BĪ9 BĒ9
“
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Į
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
„
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 

	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
¦
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
'
,0
-1
.2
*3
+4*
'
,0
-1
.2
*3
+4*
* 
°
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
4trace_0
5trace_1
6trace_2
7trace_3* 
6
8trace_0
9trace_1
:trace_2
;trace_3* 
* 
Ø
<iter

=beta_1

>beta_2
	?decay
@learning_rate*m+m,m-m.m*v+v,v-v.v*

Aserving_default* 

,0
-1
.2*

,0
-1
.2*
* 


Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
Ó
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator

,kernel
-recurrent_kernel
.bias*
* 
* 
* 
* 

Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

\trace_0
]trace_1* 

^trace_0
_trace_1* 
* 
* 
* 
* 

`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

etrace_0* 

ftrace_0* 

*0
+1*

*0
+1*
* 

gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ltrace_0* 

mtrace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_7/gru_cell_7/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_7/gru_cell_7/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_7/gru_cell_7/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

n0
o1
p2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

,0
-1
.2*

,0
-1
.2*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
v	variables
w	keras_api
	xtotal
	ycount*
H
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs*
y
	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives*
* 
* 
* 
* 
* 

x0
y1*

v	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

z	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_7/gru_cell_7/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_7/gru_cell_7/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_7/gru_cell_7/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_7/gru_cell_7/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_7/gru_cell_7/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_7/gru_cell_7/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_18Placeholder*+
_output_shapes
:’’’’’’’’’d2*
dtype0* 
shape:’’’’’’’’’d2
±
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_18gru_7/gru_cell_7/kernel!gru_7/gru_cell_7/recurrent_kernelgru_7/gru_cell_7/biasdense_17/kerneldense_17/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_4232004
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp+gru_7/gru_cell_7/kernel/Read/ReadVariableOp5gru_7/gru_cell_7/recurrent_kernel/Read/ReadVariableOp)gru_7/gru_cell_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp2Adam/gru_7/gru_cell_7/kernel/m/Read/ReadVariableOp<Adam/gru_7/gru_cell_7/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_7/gru_cell_7/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp2Adam/gru_7/gru_cell_7/kernel/v/Read/ReadVariableOp<Adam/gru_7/gru_cell_7/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_7/gru_cell_7/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_4234526
ł
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/biasgru_7/gru_cell_7/kernel!gru_7/gru_cell_7/recurrent_kernelgru_7/gru_cell_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negativesAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/gru_7/gru_cell_7/kernel/m(Adam/gru_7/gru_cell_7/recurrent_kernel/mAdam/gru_7/gru_cell_7/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/gru_7/gru_cell_7/kernel/v(Adam/gru_7/gru_cell_7/recurrent_kernel/vAdam/gru_7/gru_cell_7/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_4234620&
Ń>
½
'__forward_gpu_gru_with_fallback_4232407

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_08d8ef5a-6dc9-48ec-ae1a-ef152c0c74ad*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4232272_4232408*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
»
č

<__inference___backward_gpu_gru_with_fallback_4234223_4234359
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_ac5fc98c-9263-4525-84b0-eb9fa2e01a9a*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4234358*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ä
while_cond_4230308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4230308___redundant_placeholder05
1while_while_cond_4230308___redundant_placeholder15
1while_while_cond_4230308___redundant_placeholder25
1while_while_cond_4230308___redundant_placeholder35
1while_while_cond_4230308___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ź
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231404

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:’’’’’’’’’d._

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:’’’’’’’’’d."!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
Ń>
½
'__forward_gpu_gru_with_fallback_4231388

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_19bbe789-86fc-4e73-976f-ef8faf6f09d0*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4231253_4231389*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ń>
½
'__forward_gpu_gru_with_fallback_4232793

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_cb0ae3aa-e3db-422a-b487-dcfc37d7c22a*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4232658_4232794*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

e
,__inference_dropout_15_layer_call_fn_4234371

inputs
identity¢StatefulPartitionedCallĘ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231481s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
5
°
)__inference_gpu_gru_with_fallback_4233094

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ed88bf32-ef95-446c-be38-5c42b1b3273c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
	
ä
while_cond_4234056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4234056___redundant_placeholder05
1while_while_cond_4234056___redundant_placeholder15
1while_while_cond_4234056___redundant_placeholder25
1while_while_cond_4234056___redundant_placeholder35
1while_while_cond_4234056___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
’>
½
'__forward_gpu_gru_with_fallback_4230610

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_b5bf510a-074a-43b5-9dd3-8efd9e8ddf3f*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4230475_4230611*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
č
Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4231391

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4231176m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
	
ä
while_cond_4232105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4232105___redundant_placeholder05
1while_while_cond_4232105___redundant_placeholder15
1while_while_cond_4232105___redundant_placeholder25
1while_while_cond_4232105___redundant_placeholder35
1while_while_cond_4232105___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ą,

"__inference__wrapped_model_4230233
input_18C
0sequential_17_gru_7_read_readvariableop_resource:	2E
2sequential_17_gru_7_read_1_readvariableop_resource:	.E
2sequential_17_gru_7_read_2_readvariableop_resource:	H
5sequential_17_dense_17_matmul_readvariableop_resource:	ų#D
6sequential_17_dense_17_biasadd_readvariableop_resource:
identity¢-sequential_17/dense_17/BiasAdd/ReadVariableOp¢,sequential_17/dense_17/MatMul/ReadVariableOp¢'sequential_17/gru_7/Read/ReadVariableOp¢)sequential_17/gru_7/Read_1/ReadVariableOp¢)sequential_17/gru_7/Read_2/ReadVariableOpQ
sequential_17/gru_7/ShapeShapeinput_18*
T0*
_output_shapes
:q
'sequential_17/gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_17/gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_17/gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_17/gru_7/strided_sliceStridedSlice"sequential_17/gru_7/Shape:output:00sequential_17/gru_7/strided_slice/stack:output:02sequential_17/gru_7/strided_slice/stack_1:output:02sequential_17/gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_17/gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Æ
 sequential_17/gru_7/zeros/packedPack*sequential_17/gru_7/strided_slice:output:0+sequential_17/gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_17/gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ø
sequential_17/gru_7/zerosFill)sequential_17/gru_7/zeros/packed:output:0(sequential_17/gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.
'sequential_17/gru_7/Read/ReadVariableOpReadVariableOp0sequential_17_gru_7_read_readvariableop_resource*
_output_shapes
:	2*
dtype0
sequential_17/gru_7/IdentityIdentity/sequential_17/gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
)sequential_17/gru_7/Read_1/ReadVariableOpReadVariableOp2sequential_17_gru_7_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0
sequential_17/gru_7/Identity_1Identity1sequential_17/gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.
)sequential_17/gru_7/Read_2/ReadVariableOpReadVariableOp2sequential_17_gru_7_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0
sequential_17/gru_7/Identity_2Identity1sequential_17/gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ń
#sequential_17/gru_7/PartitionedCallPartitionedCallinput_18"sequential_17/gru_7/zeros:output:0%sequential_17/gru_7/Identity:output:0'sequential_17/gru_7/Identity_1:output:0'sequential_17/gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4230008
!sequential_17/dropout_15/IdentityIdentity,sequential_17/gru_7/PartitionedCall:output:1*
T0*+
_output_shapes
:’’’’’’’’’d.o
sequential_17/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’ų  ³
 sequential_17/flatten_14/ReshapeReshape*sequential_17/dropout_15/Identity:output:0'sequential_17/flatten_14/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#£
,sequential_17/dense_17/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_17_matmul_readvariableop_resource*
_output_shapes
:	ų#*
dtype0ŗ
sequential_17/dense_17/MatMulMatMul)sequential_17/flatten_14/Reshape:output:04sequential_17/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 
-sequential_17/dense_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_17/dense_17/BiasAddBiasAdd'sequential_17/dense_17/MatMul:product:05sequential_17/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
sequential_17/dense_17/SigmoidSigmoid'sequential_17/dense_17/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’q
IdentityIdentity"sequential_17/dense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’§
NoOpNoOp.^sequential_17/dense_17/BiasAdd/ReadVariableOp-^sequential_17/dense_17/MatMul/ReadVariableOp(^sequential_17/gru_7/Read/ReadVariableOp*^sequential_17/gru_7/Read_1/ReadVariableOp*^sequential_17/gru_7/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2^
-sequential_17/dense_17/BiasAdd/ReadVariableOp-sequential_17/dense_17/BiasAdd/ReadVariableOp2\
,sequential_17/dense_17/MatMul/ReadVariableOp,sequential_17/dense_17/MatMul/ReadVariableOp2R
'sequential_17/gru_7/Read/ReadVariableOp'sequential_17/gru_7/Read/ReadVariableOp2V
)sequential_17/gru_7/Read_1/ReadVariableOp)sequential_17/gru_7/Read_1/ReadVariableOp2V
)sequential_17/gru_7/Read_2/ReadVariableOp)sequential_17/gru_7/Read_2/ReadVariableOp:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18
	
ä
while_cond_4231568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4231568___redundant_placeholder05
1while_while_cond_4231568___redundant_placeholder15
1while_while_cond_4231568___redundant_placeholder25
1while_while_cond_4231568___redundant_placeholder35
1while_while_cond_4231568___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ą
ž
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231981
input_18 
gru_7_4231966:	2 
gru_7_4231968:	. 
gru_7_4231970:	#
dense_17_4231975:	ų#
dense_17_4231977:
identity¢ dense_17/StatefulPartitionedCall¢"dropout_15/StatefulPartitionedCall¢gru_7/StatefulPartitionedCallž
gru_7/StatefulPartitionedCallStatefulPartitionedCallinput_18gru_7_4231966gru_7_4231968gru_7_4231970*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231873ń
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231481ć
flatten_14/PartitionedCallPartitionedCall+dropout_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’ų#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_17_4231975dense_17_4231977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’®
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18
Ķ,
ć
while_body_4231087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
Į
c
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’ų  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs

Ā
B__inference_gru_7_layer_call_and_return_conditional_losses_4233609
inputs_0/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4233394v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
"
_user_specified_name
inputs/0
=
¤
 __inference_standard_gru_4232581

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4232492*
condR
while_cond_4232491*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_cb0ae3aa-e3db-422a-b487-dcfc37d7c22a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ō4
°
)__inference_gpu_gru_with_fallback_4230084

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_5f1810a1-c7e1-43d5-babf-76c3477cdfd1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ŗ
ü
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231917

inputs 
gru_7_4231902:	2 
gru_7_4231904:	. 
gru_7_4231906:	#
dense_17_4231911:	ų#
dense_17_4231913:
identity¢ dense_17/StatefulPartitionedCall¢"dropout_15/StatefulPartitionedCall¢gru_7/StatefulPartitionedCallü
gru_7/StatefulPartitionedCallStatefulPartitionedCallinputsgru_7_4231902gru_7_4231904gru_7_4231906*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231873ń
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231481ć
flatten_14/PartitionedCallPartitionedCall+dropout_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’ų#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_17_4231911dense_17_4231913*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’®
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Ķ,
ć
while_body_4230309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
ä
ł
/__inference_sequential_17_layer_call_fn_4231445
input_18
unknown:	2
	unknown_0:	.
	unknown_1:	
	unknown_2:	ų#
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18
Ō4
°
)__inference_gpu_gru_with_fallback_4232657

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_cb0ae3aa-e3db-422a-b487-dcfc37d7c22a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
=
¤
 __inference_standard_gru_4233770

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4233681*
condR
while_cond_4233680*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_8df42b32-efb5-4283-a3c8-42ee4833359d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ķ,
ć
while_body_4229919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:

Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4230613

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4230398v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs
	
ä
while_cond_4230695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4230695___redundant_placeholder05
1while_while_cond_4230695___redundant_placeholder15
1while_while_cond_4230695___redundant_placeholder25
1while_while_cond_4230695___redundant_placeholder35
1while_while_cond_4230695___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
°
č

<__inference___backward_gpu_gru_with_fallback_4230475_4230611
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ŗ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ą
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:š
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ł
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*„
_input_shapes
:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :’’’’’’’’’’’’’’’’’’.::’’’’’’’’’.: ::’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_b5bf510a-074a-43b5-9dd3-8efd9e8ddf3f*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4230610*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: ::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ä
while_cond_4233680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4233680___redundant_placeholder05
1while_while_cond_4233680___redundant_placeholder15
1while_while_cond_4233680___redundant_placeholder25
1while_while_cond_4233680___redundant_placeholder35
1while_while_cond_4233680___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
=
¤
 __inference_standard_gru_4234146

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4234057*
condR
while_cond_4234056*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ac5fc98c-9263-4525-84b0-eb9fa2e01a9a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

ø
'__inference_gru_7_layer_call_fn_4232857

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
identity¢StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231873s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Š=
¤
 __inference_standard_gru_4233018

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4232929*
condR
while_cond_4232928*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ė
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ed88bf32-ef95-446c-be38-5c42b1b3273c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ä
ł
/__inference_sequential_17_layer_call_fn_4231945
input_18
unknown:	2
	unknown_0:	.
	unknown_1:	
	unknown_2:	ų#
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18
­
H
,__inference_flatten_14_layer_call_fn_4234393

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’ų#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
Ō4
°
)__inference_gpu_gru_with_fallback_4233846

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_8df42b32-efb5-4283-a3c8-42ee4833359d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
=
¤
 __inference_standard_gru_4231176

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4231087*
condR
while_cond_4231086*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_19bbe789-86fc-4e73-976f-ef8faf6f09d0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Š=
¤
 __inference_standard_gru_4230398

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4230309*
condR
while_cond_4230308*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ė
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_b5bf510a-074a-43b5-9dd3-8efd9e8ddf3f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
²
ļ
%__inference_signature_wrapper_4232004
input_18
unknown:	2
	unknown_0:	.
	unknown_1:	
	unknown_2:	ų#
	unknown_3:
identity¢StatefulPartitionedCallą
StatefulPartitionedCallStatefulPartitionedCallinput_18unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_4230233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18
č
Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4231873

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4231658m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Ķ,
ć
while_body_4233681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
»
č

<__inference___backward_gpu_gru_with_fallback_4232272_4232408
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_08d8ef5a-6dc9-48ec-ae1a-ef152c0c74ad*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4232407*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ķ,
ć
while_body_4234057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
Ō4
°
)__inference_gpu_gru_with_fallback_4231734

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_fb4de0f8-73d4-4188-88df-aefd4db2b7cb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
	
ä
while_cond_4233304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4233304___redundant_placeholder05
1while_while_cond_4233304___redundant_placeholder15
1while_while_cond_4233304___redundant_placeholder25
1while_while_cond_4233304___redundant_placeholder35
1while_while_cond_4233304___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ķ,
ć
while_body_4230696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
»
č

<__inference___backward_gpu_gru_with_fallback_4231253_4231389
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_19bbe789-86fc-4e73-976f-ef8faf6f09d0*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4231388*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
5
°
)__inference_gpu_gru_with_fallback_4233470

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_97cfce89-882c-478a-9dc4-4e1d5c2c83d8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
ź
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234376

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:’’’’’’’’’d._

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:’’’’’’’’’d."!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
Ō4
°
)__inference_gpu_gru_with_fallback_4231252

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_19bbe789-86fc-4e73-976f-ef8faf6f09d0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
°
č

<__inference___backward_gpu_gru_with_fallback_4233095_4233231
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ŗ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ą
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:š
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ł
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*„
_input_shapes
:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :’’’’’’’’’’’’’’’’’’.::’’’’’’’’’.: ::’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_ed88bf32-ef95-446c-be38-5c42b1b3273c*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4233230*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: ::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
č
Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4233985

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4233770m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
ś+
”
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232813

inputs5
"gru_7_read_readvariableop_resource:	27
$gru_7_read_1_readvariableop_resource:	.7
$gru_7_read_2_readvariableop_resource:	:
'dense_17_matmul_readvariableop_resource:	ų#6
(dense_17_biasadd_readvariableop_resource:
identity¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢gru_7/Read/ReadVariableOp¢gru_7/Read_1/ReadVariableOp¢gru_7/Read_2/ReadVariableOpA
gru_7/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ļ
gru_7/strided_sliceStridedSlicegru_7/Shape:output:0"gru_7/strided_slice/stack:output:0$gru_7/strided_slice/stack_1:output:0$gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
gru_7/zeros/packedPackgru_7/strided_slice:output:0gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_7/zerosFillgru_7/zeros/packed:output:0gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.}
gru_7/Read/ReadVariableOpReadVariableOp"gru_7_read_readvariableop_resource*
_output_shapes
:	2*
dtype0g
gru_7/IdentityIdentity!gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_7/Read_1/ReadVariableOpReadVariableOp$gru_7_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0k
gru_7/Identity_1Identity#gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.
gru_7/Read_2/ReadVariableOpReadVariableOp$gru_7_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0k
gru_7/Identity_2Identity#gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	©
gru_7/PartitionedCallPartitionedCallinputsgru_7/zeros:output:0gru_7/Identity:output:0gru_7/Identity_1:output:0gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4232581]
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_15/dropout/MulMulgru_7/PartitionedCall:output:1!dropout_15/dropout/Const:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.f
dropout_15/dropout/ShapeShapegru_7/PartitionedCall:output:1*
T0*
_output_shapes
:¦
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.*
dtype0f
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL>Ė
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:’’’’’’’’’d.
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’ų  
flatten_14/ReshapeReshapedropout_15/dropout/Mul_1:z:0flatten_14/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	ų#*
dtype0
dense_17/MatMulMatMulflatten_14/Reshape:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’į
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp^gru_7/Read/ReadVariableOp^gru_7/Read_1/ReadVariableOp^gru_7/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp26
gru_7/Read/ReadVariableOpgru_7/Read/ReadVariableOp2:
gru_7/Read_1/ReadVariableOpgru_7/Read_1/ReadVariableOp2:
gru_7/Read_2/ReadVariableOpgru_7/Read_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
³
H
,__inference_dropout_15_layer_call_fn_4234366

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231404d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:’’’’’’’’’d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
Ž
÷
/__inference_sequential_17_layer_call_fn_4232034

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
	unknown_2:	ų#
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231917o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Ń>
½
'__forward_gpu_gru_with_fallback_4230220

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_5f1810a1-c7e1-43d5-babf-76c3477cdfd1*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4230085_4230221*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Š=
¤
 __inference_standard_gru_4230785

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4230696*
condR
while_cond_4230695*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ė
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_6160e86d-404b-484e-8192-8fcd3f34f551*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

Ł
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231963
input_18 
gru_7_4231948:	2 
gru_7_4231950:	. 
gru_7_4231952:	#
dense_17_4231957:	ų#
dense_17_4231959:
identity¢ dense_17/StatefulPartitionedCall¢gru_7/StatefulPartitionedCallž
gru_7/StatefulPartitionedCallStatefulPartitionedCallinput_18gru_7_4231948gru_7_4231950gru_7_4231952*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231391į
dropout_15/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231404Ū
flatten_14/PartitionedCallPartitionedCall#dropout_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’ų#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_17_4231957dense_17_4231959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp!^dense_17/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’d2
"
_user_specified_name
input_18

×
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231432

inputs 
gru_7_4231392:	2 
gru_7_4231394:	. 
gru_7_4231396:	#
dense_17_4231426:	ų#
dense_17_4231428:
identity¢ dense_17/StatefulPartitionedCall¢gru_7/StatefulPartitionedCallü
gru_7/StatefulPartitionedCallStatefulPartitionedCallinputsgru_7_4231392gru_7_4231394gru_7_4231396*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231391į
dropout_15/PartitionedCallPartitionedCall&gru_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231404Ū
flatten_14/PartitionedCallPartitionedCall#dropout_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’ų#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_4231412
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_17_4231426dense_17_4231428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp!^dense_17/StatefulPartitionedCall^gru_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2>
gru_7/StatefulPartitionedCallgru_7/StatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
=
¤
 __inference_standard_gru_4230008

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4229919*
condR
while_cond_4229918*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_5f1810a1-c7e1-43d5-babf-76c3477cdfd1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
	
ä
while_cond_4229918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4229918___redundant_placeholder05
1while_while_cond_4229918___redundant_placeholder15
1while_while_cond_4229918___redundant_placeholder25
1while_while_cond_4229918___redundant_placeholder35
1while_while_cond_4229918___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
’>
½
'__forward_gpu_gru_with_fallback_4233230

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ed88bf32-ef95-446c-be38-5c42b1b3273c*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4233095_4233231*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
=
¤
 __inference_standard_gru_4231658

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4231569*
condR
while_cond_4231568*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_fb4de0f8-73d4-4188-88df-aefd4db2b7cb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
«
ŗ
'__inference_gru_7_layer_call_fn_4232824
inputs_0
unknown:	2
	unknown_0:	.
	unknown_1:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4230613|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
"
_user_specified_name
inputs/0
5
°
)__inference_gpu_gru_with_fallback_4230474

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_b5bf510a-074a-43b5-9dd3-8efd9e8ddf3f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ō4
°
)__inference_gpu_gru_with_fallback_4234222

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ac5fc98c-9263-4525-84b0-eb9fa2e01a9a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ž
÷
/__inference_sequential_17_layer_call_fn_4232019

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
	unknown_2:	ų#
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Ķ,
ć
while_body_4232492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:


f
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234388

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL>Ŗ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:’’’’’’’’’d.m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:’’’’’’’’’d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs


÷
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425

inputs1
matmul_readvariableop_resource:	ų#-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ų#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’ų#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’ų#
 
_user_specified_nameinputs
$
”
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232420

inputs5
"gru_7_read_readvariableop_resource:	27
$gru_7_read_1_readvariableop_resource:	.7
$gru_7_read_2_readvariableop_resource:	:
'dense_17_matmul_readvariableop_resource:	ų#6
(dense_17_biasadd_readvariableop_resource:
identity¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢gru_7/Read/ReadVariableOp¢gru_7/Read_1/ReadVariableOp¢gru_7/Read_2/ReadVariableOpA
gru_7/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ļ
gru_7/strided_sliceStridedSlicegru_7/Shape:output:0"gru_7/strided_slice/stack:output:0$gru_7/strided_slice/stack_1:output:0$gru_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
gru_7/zeros/packedPackgru_7/strided_slice:output:0gru_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_7/zerosFillgru_7/zeros/packed:output:0gru_7/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.}
gru_7/Read/ReadVariableOpReadVariableOp"gru_7_read_readvariableop_resource*
_output_shapes
:	2*
dtype0g
gru_7/IdentityIdentity!gru_7/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_7/Read_1/ReadVariableOpReadVariableOp$gru_7_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0k
gru_7/Identity_1Identity#gru_7/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.
gru_7/Read_2/ReadVariableOpReadVariableOp$gru_7_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0k
gru_7/Identity_2Identity#gru_7/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	©
gru_7/PartitionedCallPartitionedCallinputsgru_7/zeros:output:0gru_7/Identity:output:0gru_7/Identity_1:output:0gru_7/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4232195u
dropout_15/IdentityIdentitygru_7/PartitionedCall:output:1*
T0*+
_output_shapes
:’’’’’’’’’d.a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’ų  
flatten_14/ReshapeReshapedropout_15/Identity:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	ų#*
dtype0
dense_17/MatMulMatMulflatten_14/Reshape:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’į
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp^gru_7/Read/ReadVariableOp^gru_7/Read_1/ReadVariableOp^gru_7/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’d2: : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp26
gru_7/Read/ReadVariableOpgru_7/Read/ReadVariableOp2:
gru_7/Read_1/ReadVariableOpgru_7/Read_1/ReadVariableOp2:
gru_7/Read_2/ReadVariableOpgru_7/Read_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
»
č

<__inference___backward_gpu_gru_with_fallback_4233847_4233983
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_8df42b32-efb5-4283-a3c8-42ee4833359d*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4233982*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
°
č

<__inference___backward_gpu_gru_with_fallback_4233471_4233607
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ŗ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ą
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:š
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ł
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*„
_input_shapes
:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :’’’’’’’’’’’’’’’’’’.::’’’’’’’’’.: ::’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_97cfce89-882c-478a-9dc4-4e1d5c2c83d8*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4233606*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: ::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
»
č

<__inference___backward_gpu_gru_with_fallback_4232658_4232794
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_cb0ae3aa-e3db-422a-b487-dcfc37d7c22a*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4232793*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
=
¤
 __inference_standard_gru_4232195

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4232106*
condR
while_cond_4232105*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ā
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_08d8ef5a-6dc9-48ec-ae1a-ef152c0c74ad*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
»
č

<__inference___backward_gpu_gru_with_fallback_4231735_4231871
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_fb4de0f8-73d4-4188-88df-aefd4db2b7cb*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4231870*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
»
č

<__inference___backward_gpu_gru_with_fallback_4230085_4230221
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:’’’’’’’’’d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:”
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.ł
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:ē
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Š
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapesų
õ:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: :d’’’’’’’’’.::’’’’’’’’’.: ::d’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_5f1810a1-c7e1-43d5-babf-76c3477cdfd1*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4230220*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.:1-
+
_output_shapes
:’’’’’’’’’d.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :1-
+
_output_shapes
:d’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ķ,
ć
while_body_4233305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
’>
½
'__forward_gpu_gru_with_fallback_4230997

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_6160e86d-404b-484e-8192-8fcd3f34f551*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4230862_4230998*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ō4
°
)__inference_gpu_gru_with_fallback_4232271

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_08d8ef5a-6dc9-48ec-ae1a-ef152c0c74ad*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias


f
G__inference_dropout_15_layer_call_and_return_conditional_losses_4231481

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ĶĢL>Ŗ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:’’’’’’’’’d.m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:’’’’’’’’’d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
’>
½
'__forward_gpu_gru_with_fallback_4233606

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_97cfce89-882c-478a-9dc4-4e1d5c2c83d8*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4233471_4233607*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ķ,
ć
while_body_4232929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
Ń>
½
'__forward_gpu_gru_with_fallback_4234358

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_ac5fc98c-9263-4525-84b0-eb9fa2e01a9a*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4234223_4234359*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ē

*__inference_dense_17_layer_call_fn_4234408

inputs
unknown:	ų#
	unknown_0:
identity¢StatefulPartitionedCallŚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_4231425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’ų#: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’ų#
 
_user_specified_nameinputs
č
Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4234361

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’.:’’’’’’’’’d.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4234146m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
	
ä
while_cond_4232491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4232491___redundant_placeholder05
1while_while_cond_4232491___redundant_placeholder15
1while_while_cond_4232491___redundant_placeholder25
1while_while_cond_4232491___redundant_placeholder35
1while_while_cond_4232491___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ģ=

 __inference__traced_save_4234526
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop6
2savev2_gru_7_gru_cell_7_kernel_read_readvariableop@
<savev2_gru_7_gru_cell_7_recurrent_kernel_read_readvariableop4
0savev2_gru_7_gru_cell_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop=
9savev2_adam_gru_7_gru_cell_7_kernel_m_read_readvariableopG
Csavev2_adam_gru_7_gru_cell_7_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_7_gru_cell_7_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop=
9savev2_adam_gru_7_gru_cell_7_kernel_v_read_readvariableopG
Csavev2_adam_gru_7_gru_cell_7_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_7_gru_cell_7_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø
value®B«B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH§
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop2savev2_gru_7_gru_cell_7_kernel_read_readvariableop<savev2_gru_7_gru_cell_7_recurrent_kernel_read_readvariableop0savev2_gru_7_gru_cell_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop9savev2_adam_gru_7_gru_cell_7_kernel_m_read_readvariableopCsavev2_adam_gru_7_gru_cell_7_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_7_gru_cell_7_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop9savev2_adam_gru_7_gru_cell_7_kernel_v_read_readvariableopCsavev2_adam_gru_7_gru_cell_7_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_7_gru_cell_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ż
_input_shapesĖ
Č: :	ų#::	2:	.:	: : : : : : : : : :Č:Č:Č:Č:	ų#::	2:	.:	:	ų#::	2:	.:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ų#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:Č:!

_output_shapes	
:Č:!

_output_shapes	
:Č:!

_output_shapes	
:Č:%!

_output_shapes
:	ų#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:%!

_output_shapes
:	ų#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:

_output_shapes
: 
Ķ,
ć
while_body_4231569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:

ø
'__inference_gru_7_layer_call_fn_4232846

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
identity¢StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231391s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs
Į
c
G__inference_flatten_14_layer_call_and_return_conditional_losses_4234399

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’ų  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’ų#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’d.:S O
+
_output_shapes
:’’’’’’’’’d.
 
_user_specified_nameinputs
	
ä
while_cond_4231086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4231086___redundant_placeholder05
1while_while_cond_4231086___redundant_placeholder15
1while_while_cond_4231086___redundant_placeholder25
1while_while_cond_4231086___redundant_placeholder35
1while_while_cond_4231086___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Š=
¤
 __inference_standard_gru_4233394

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
::*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:’’’’’’’’’.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4233305*
condR
while_cond_4233304*V
output_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’.   Ė
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_97cfce89-882c-478a-9dc4-4e1d5c2c83d8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ķ,
ć
while_body_4232106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:’’’’’’’’’
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:’’’’’’’’’Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:’’’’’’’’’.:’’’’’’’’’.:’’’’’’’’’.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:’’’’’’’’’.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:’’’’’’’’’.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:’’’’’’’’’.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:’’’’’’’’’.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’.ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅO
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :’’’’’’’’’.: : :	2::	.:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2:!

_output_shapes	
::%	!

_output_shapes
:	.:!


_output_shapes	
:
°
č

<__inference___backward_gpu_gru_with_fallback_4230862_4230998
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:’’’’’’’’’.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:’’’’’’’’’.O
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ŗ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ą
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:š
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ł
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:üh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Äh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Äg
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:.g
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:.h
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:.
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ę
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:üź
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Äź
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Äé
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.é
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.ģ
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:.o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   £
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   „
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   „
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.”
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.£
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.¤
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:.
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:·
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2.
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:..
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	.m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¢
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2h

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	.i

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*„
_input_shapes
:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :’’’’’’’’’’’’’’’’’’.::’’’’’’’’’.: ::’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.: :Ōi::’’’’’’’’’.: ::::::: : : *<
api_implements*(gru_6160e86d-404b-484e-8192-8fcd3f34f551*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_gru_with_fallback_4230997*
go_backwards( *

time_major( :- )
'
_output_shapes
:’’’’’’’’’.::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.:-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: ::6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.: 

_output_shapes
::1-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2:1
-
+
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :!

_output_shapes	
:Ōi: 

_output_shapes
::-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Ā
B__inference_gru_7_layer_call_and_return_conditional_losses_4233233
inputs_0/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4233018v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
"
_user_specified_name
inputs/0
5
°
)__inference_gpu_gru_with_fallback_4230861

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ŌiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:’’’’’’’’’’’’’’’’’’2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_6160e86d-404b-484e-8192-8fcd3f34f551*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias
Ń>
½
'__forward_gpu_gru_with_fallback_4233982

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_8df42b32-efb5-4283-a3c8-42ee4833359d*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4233847_4233983*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias

Ą
B__inference_gru_7_layer_call_and_return_conditional_losses_4231000

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’.q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	.*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:’’’’’’’’’.:’’’’’’’’’’’’’’’’’’.:’’’’’’’’’.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_gru_4230785v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
 
_user_specified_nameinputs
«
ŗ
'__inference_gru_7_layer_call_fn_4232835
inputs_0
unknown:	2
	unknown_0:	.
	unknown_1:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_7_layer_call_and_return_conditional_losses_4231000|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2
"
_user_specified_name
inputs/0
Ń>
½
'__forward_gpu_gru_with_fallback_4231870

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’.Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:2.:2.:2.*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:..:..:..*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:.:.:.:.:.:.*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:.2[
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:üa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:Äa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:..[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:Ä[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:.[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:.[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:.\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:.\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:.\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:.M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ī
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d’’’’’’’’’.:’’’’’’’’’.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:’’’’’’’’’.*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:’’’’’’’’’d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:’’’’’’’’’.I

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:’’’’’’’’’d2:’’’’’’’’’.:	2:	.:	*<
api_implements*(gru_fb4de0f8-73d4-4188-88df-aefd4db2b7cb*
api_preferred_deviceGPU*X
backward_function_name><__inference___backward_gpu_gru_with_fallback_4231735_4231871*
go_backwards( *

time_major( :S O
+
_output_shapes
:’’’’’’’’’d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’.
 
_user_specified_nameinit_h:GC

_output_shapes
:	2
 
_user_specified_namekernel:QM

_output_shapes
:	.
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	

_user_specified_namebias


÷
E__inference_dense_17_layer_call_and_return_conditional_losses_4234419

inputs1
matmul_readvariableop_resource:	ų#-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ų#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’ų#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’ų#
 
_user_specified_nameinputs
	
ä
while_cond_4232928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_4232928___redundant_placeholder05
1while_while_cond_4232928___redundant_placeholder15
1while_while_cond_4232928___redundant_placeholder25
1while_while_cond_4232928___redundant_placeholder35
1while_while_cond_4232928___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :’’’’’’’’’.: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:’’’’’’’’’.:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Śp
“
#__inference__traced_restore_4234620
file_prefix3
 assignvariableop_dense_17_kernel:	ų#.
 assignvariableop_1_dense_17_bias:=
*assignvariableop_2_gru_7_gru_cell_7_kernel:	2G
4assignvariableop_3_gru_7_gru_cell_7_recurrent_kernel:	.;
(assignvariableop_4_gru_7_gru_cell_7_bias:	&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: 1
"assignvariableop_14_true_positives:	Č1
"assignvariableop_15_true_negatives:	Č2
#assignvariableop_16_false_positives:	Č2
#assignvariableop_17_false_negatives:	Č=
*assignvariableop_18_adam_dense_17_kernel_m:	ų#6
(assignvariableop_19_adam_dense_17_bias_m:E
2assignvariableop_20_adam_gru_7_gru_cell_7_kernel_m:	2O
<assignvariableop_21_adam_gru_7_gru_cell_7_recurrent_kernel_m:	.C
0assignvariableop_22_adam_gru_7_gru_cell_7_bias_m:	=
*assignvariableop_23_adam_dense_17_kernel_v:	ų#6
(assignvariableop_24_adam_dense_17_bias_v:E
2assignvariableop_25_adam_gru_7_gru_cell_7_kernel_v:	2O
<assignvariableop_26_adam_gru_7_gru_cell_7_recurrent_kernel_v:	.C
0assignvariableop_27_adam_gru_7_gru_cell_7_bias_v:	
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø
value®B«B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B °
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp*assignvariableop_2_gru_7_gru_cell_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_3AssignVariableOp4assignvariableop_3_gru_7_gru_cell_7_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp(assignvariableop_4_gru_7_gru_cell_7_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_true_positivesIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_true_negativesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_false_positivesIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_false_negativesIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_17_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_17_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_7_gru_cell_7_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_7_gru_cell_7_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_gru_7_gru_cell_7_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_17_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_17_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_gru_7_gru_cell_7_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_gru_7_gru_cell_7_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_gru_7_gru_cell_7_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ·
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: ¤
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"æL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_default
A
input_185
serving_default_input_18:0’’’’’’’’’d2<
dense_170
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:µ±
Ī
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ś
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
„
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
»
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
C
,0
-1
.2
*3
+4"
trackable_list_wrapper
C
,0
-1
.2
*3
+4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ź
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ņ
4trace_0
5trace_1
6trace_2
7trace_32
/__inference_sequential_17_layer_call_fn_4231445
/__inference_sequential_17_layer_call_fn_4232019
/__inference_sequential_17_layer_call_fn_4232034
/__inference_sequential_17_layer_call_fn_4231945Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 z4trace_0z5trace_1z6trace_2z7trace_3
Ž
8trace_0
9trace_1
:trace_2
;trace_32ó
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232420
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232813
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231963
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231981Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 z8trace_0z9trace_1z:trace_2z;trace_3
ĪBĖ
"__inference__wrapped_model_4230233input_18"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
·
<iter

=beta_1

>beta_2
	?decay
@learning_rate*m+m,m-m.m*v+v,v-v.v"
	optimizer
,
Aserving_default"
signature_map
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ē
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32ü
'__inference_gru_7_layer_call_fn_4232824
'__inference_gru_7_layer_call_fn_4232835
'__inference_gru_7_layer_call_fn_4232846
'__inference_gru_7_layer_call_fn_4232857Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
Ó
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32č
B__inference_gru_7_layer_call_and_return_conditional_losses_4233233
B__inference_gru_7_layer_call_and_return_conditional_losses_4233609
B__inference_gru_7_layer_call_and_return_conditional_losses_4233985
B__inference_gru_7_layer_call_and_return_conditional_losses_4234361Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
"
_generic_user_object
č
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator

,kernel
-recurrent_kernel
.bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ź
\trace_0
]trace_12
,__inference_dropout_15_layer_call_fn_4234366
,__inference_dropout_15_layer_call_fn_4234371“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 z\trace_0z]trace_1

^trace_0
_trace_12É
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234376
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234388“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 z^trace_0z_trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
š
etrace_02Ó
,__inference_flatten_14_layer_call_fn_4234393¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zetrace_0

ftrace_02ī
G__inference_flatten_14_layer_call_and_return_conditional_losses_4234399¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zftrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ī
ltrace_02Ń
*__inference_dense_17_layer_call_fn_4234408¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zltrace_0

mtrace_02ģ
E__inference_dense_17_layer_call_and_return_conditional_losses_4234419¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zmtrace_0
": 	ų#2dense_17/kernel
:2dense_17/bias
*:(	22gru_7/gru_cell_7/kernel
4:2	.2!gru_7/gru_cell_7/recurrent_kernel
(:&	2gru_7/gru_cell_7/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
n0
o1
p2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_sequential_17_layer_call_fn_4231445input_18"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Bž
/__inference_sequential_17_layer_call_fn_4232019inputs"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Bž
/__inference_sequential_17_layer_call_fn_4232034inputs"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
/__inference_sequential_17_layer_call_fn_4231945input_18"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232420inputs"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232813inputs"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231963input_18"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231981input_18"Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ĶBŹ
%__inference_signature_wrapper_4232004input_18"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
'__inference_gru_7_layer_call_fn_4232824inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
'__inference_gru_7_layer_call_fn_4232835inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
'__inference_gru_7_layer_call_fn_4232846inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
'__inference_gru_7_layer_call_fn_4232857inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
«BØ
B__inference_gru_7_layer_call_and_return_conditional_losses_4233233inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
«BØ
B__inference_gru_7_layer_call_and_return_conditional_losses_4233609inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
©B¦
B__inference_gru_7_layer_call_and_return_conditional_losses_4233985inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
©B¦
B__inference_gru_7_layer_call_and_return_conditional_losses_4234361inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Ä2Į¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
Ä2Į¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ņBļ
,__inference_dropout_15_layer_call_fn_4234366inputs"“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ņBļ
,__inference_dropout_15_layer_call_fn_4234371inputs"“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234376inputs"“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234388inputs"“
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ąBŻ
,__inference_flatten_14_layer_call_fn_4234393inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ūBų
G__inference_flatten_14_layer_call_and_return_conditional_losses_4234399inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŽBŪ
*__inference_dense_17_layer_call_fn_4234408inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
łBö
E__inference_dense_17_layer_call_and_return_conditional_losses_4234419inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
N
v	variables
w	keras_api
	xtotal
	ycount"
_tf_keras_metric
^
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs"
_tf_keras_metric

	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
.
|0
}1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
-
	variables"
_generic_user_object
:Č (2true_positives
:Č (2true_negatives
 :Č (2false_positives
 :Č (2false_negatives
':%	ų#2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
/:-	22Adam/gru_7/gru_cell_7/kernel/m
9:7	.2(Adam/gru_7/gru_cell_7/recurrent_kernel/m
-:+	2Adam/gru_7/gru_cell_7/bias/m
':%	ų#2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
/:-	22Adam/gru_7/gru_cell_7/kernel/v
9:7	.2(Adam/gru_7/gru_cell_7/recurrent_kernel/v
-:+	2Adam/gru_7/gru_cell_7/bias/v
"__inference__wrapped_model_4230233s,-.*+5¢2
+¢(
&#
input_18’’’’’’’’’d2
Ŗ "3Ŗ0
.
dense_17"
dense_17’’’’’’’’’¦
E__inference_dense_17_layer_call_and_return_conditional_losses_4234419]*+0¢-
&¢#
!
inputs’’’’’’’’’ų#
Ŗ "%¢"

0’’’’’’’’’
 ~
*__inference_dense_17_layer_call_fn_4234408P*+0¢-
&¢#
!
inputs’’’’’’’’’ų#
Ŗ "’’’’’’’’’Æ
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234376d7¢4
-¢*
$!
inputs’’’’’’’’’d.
p 
Ŗ ")¢&

0’’’’’’’’’d.
 Æ
G__inference_dropout_15_layer_call_and_return_conditional_losses_4234388d7¢4
-¢*
$!
inputs’’’’’’’’’d.
p
Ŗ ")¢&

0’’’’’’’’’d.
 
,__inference_dropout_15_layer_call_fn_4234366W7¢4
-¢*
$!
inputs’’’’’’’’’d.
p 
Ŗ "’’’’’’’’’d.
,__inference_dropout_15_layer_call_fn_4234371W7¢4
-¢*
$!
inputs’’’’’’’’’d.
p
Ŗ "’’’’’’’’’d.Ø
G__inference_flatten_14_layer_call_and_return_conditional_losses_4234399]3¢0
)¢&
$!
inputs’’’’’’’’’d.
Ŗ "&¢#

0’’’’’’’’’ų#
 
,__inference_flatten_14_layer_call_fn_4234393P3¢0
)¢&
$!
inputs’’’’’’’’’d.
Ŗ "’’’’’’’’’ų#Ń
B__inference_gru_7_layer_call_and_return_conditional_losses_4233233,-.O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’2

 
p 

 
Ŗ "2¢/
(%
0’’’’’’’’’’’’’’’’’’.
 Ń
B__inference_gru_7_layer_call_and_return_conditional_losses_4233609,-.O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’2

 
p

 
Ŗ "2¢/
(%
0’’’’’’’’’’’’’’’’’’.
 ·
B__inference_gru_7_layer_call_and_return_conditional_losses_4233985q,-.?¢<
5¢2
$!
inputs’’’’’’’’’d2

 
p 

 
Ŗ ")¢&

0’’’’’’’’’d.
 ·
B__inference_gru_7_layer_call_and_return_conditional_losses_4234361q,-.?¢<
5¢2
$!
inputs’’’’’’’’’d2

 
p

 
Ŗ ")¢&

0’’’’’’’’’d.
 Ø
'__inference_gru_7_layer_call_fn_4232824},-.O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’2

 
p 

 
Ŗ "%"’’’’’’’’’’’’’’’’’’.Ø
'__inference_gru_7_layer_call_fn_4232835},-.O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’2

 
p

 
Ŗ "%"’’’’’’’’’’’’’’’’’’.
'__inference_gru_7_layer_call_fn_4232846d,-.?¢<
5¢2
$!
inputs’’’’’’’’’d2

 
p 

 
Ŗ "’’’’’’’’’d.
'__inference_gru_7_layer_call_fn_4232857d,-.?¢<
5¢2
$!
inputs’’’’’’’’’d2

 
p

 
Ŗ "’’’’’’’’’d.»
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231963m,-.*+=¢:
3¢0
&#
input_18’’’’’’’’’d2
p 

 
Ŗ "%¢"

0’’’’’’’’’
 »
J__inference_sequential_17_layer_call_and_return_conditional_losses_4231981m,-.*+=¢:
3¢0
&#
input_18’’’’’’’’’d2
p

 
Ŗ "%¢"

0’’’’’’’’’
 ¹
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232420k,-.*+;¢8
1¢.
$!
inputs’’’’’’’’’d2
p 

 
Ŗ "%¢"

0’’’’’’’’’
 ¹
J__inference_sequential_17_layer_call_and_return_conditional_losses_4232813k,-.*+;¢8
1¢.
$!
inputs’’’’’’’’’d2
p

 
Ŗ "%¢"

0’’’’’’’’’
 
/__inference_sequential_17_layer_call_fn_4231445`,-.*+=¢:
3¢0
&#
input_18’’’’’’’’’d2
p 

 
Ŗ "’’’’’’’’’
/__inference_sequential_17_layer_call_fn_4231945`,-.*+=¢:
3¢0
&#
input_18’’’’’’’’’d2
p

 
Ŗ "’’’’’’’’’
/__inference_sequential_17_layer_call_fn_4232019^,-.*+;¢8
1¢.
$!
inputs’’’’’’’’’d2
p 

 
Ŗ "’’’’’’’’’
/__inference_sequential_17_layer_call_fn_4232034^,-.*+;¢8
1¢.
$!
inputs’’’’’’’’’d2
p

 
Ŗ "’’’’’’’’’Ø
%__inference_signature_wrapper_4232004,-.*+A¢>
¢ 
7Ŗ4
2
input_18&#
input_18’’’’’’’’’d2"3Ŗ0
.
dense_17"
dense_17’’’’’’’’’