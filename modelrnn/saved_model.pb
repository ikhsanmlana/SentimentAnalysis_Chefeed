˝Ç
˙Ô
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

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
Á
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
executor_typestring ¨
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
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.12v2.9.0-18-gd8ce9f9c3018řĺ
°
,Adam/simple_rnn_12/simple_rnn_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:D*=
shared_name.,Adam/simple_rnn_12/simple_rnn_cell_14/bias/v
Š
@Adam/simple_rnn_12/simple_rnn_cell_14/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_12/simple_rnn_cell_14/bias/v*
_output_shapes
:D*
dtype0
Ě
8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*I
shared_name:8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v
Ĺ
LAdam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v*
_output_shapes

:DD*
dtype0
¸
.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2D*?
shared_name0.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/v
ą
BAdam/simple_rnn_12/simple_rnn_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/v*
_output_shapes

:2D*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	5*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	5*
dtype0
°
,Adam/simple_rnn_12/simple_rnn_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:D*=
shared_name.,Adam/simple_rnn_12/simple_rnn_cell_14/bias/m
Š
@Adam/simple_rnn_12/simple_rnn_cell_14/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_12/simple_rnn_cell_14/bias/m*
_output_shapes
:D*
dtype0
Ě
8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*I
shared_name:8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m
Ĺ
LAdam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m*
_output_shapes

:DD*
dtype0
¸
.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2D*?
shared_name0.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/m
ą
BAdam/simple_rnn_12/simple_rnn_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/m*
_output_shapes

:2D*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	5*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	5*
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
˘
%simple_rnn_12/simple_rnn_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:D*6
shared_name'%simple_rnn_12/simple_rnn_cell_14/bias

9simple_rnn_12/simple_rnn_cell_14/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_12/simple_rnn_cell_14/bias*
_output_shapes
:D*
dtype0
ž
1simple_rnn_12/simple_rnn_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*B
shared_name31simple_rnn_12/simple_rnn_cell_14/recurrent_kernel
ˇ
Esimple_rnn_12/simple_rnn_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_12/simple_rnn_cell_14/recurrent_kernel*
_output_shapes

:DD*
dtype0
Ş
'simple_rnn_12/simple_rnn_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2D*8
shared_name)'simple_rnn_12/simple_rnn_cell_14/kernel
Ł
;simple_rnn_12/simple_rnn_cell_14/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_12/simple_rnn_cell_14/kernel*
_output_shapes

:2D*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	5*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	5*
dtype0

NoOpNoOp
â;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*;
value;B; B;
´
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
Ş
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
Ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 

	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
Ś
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
'
+0
,1
-2
)3
*4*
'
+0
,1
-2
)3
*4*
* 
°
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
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
3trace_0
4trace_1
5trace_2
6trace_3* 
6
7trace_0
8trace_1
9trace_2
:trace_3* 
* 
¨
;iter

<beta_1

=beta_2
	>decay
?learning_rate)m*m+m,m-m)v*v+v,v-v*

@serving_default* 

+0
,1
-2*

+0
,1
-2*
* 


Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
Ó
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
U_random_generator

+kernel
,recurrent_kernel
-bias*
* 
* 
* 
* 

Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

[trace_0
\trace_1* 

]trace_0
^trace_1* 
* 
* 
* 
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

dtrace_0* 

etrace_0* 

)0
*1*

)0
*1*
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_12/simple_rnn_cell_14/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_12/simple_rnn_cell_14/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_12/simple_rnn_cell_14/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

m0
n1
o2*
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

0*
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
+0
,1
-2*

+0
,1
-2*
* 

pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

utrace_0
vtrace_1* 

wtrace_0
xtrace_1* 
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
y	variables
z	keras_api
	{total
	|count*
J
}	variables
~	keras_api
	total

count

_fn_kwargs*
z
	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives*
* 
* 
* 
* 
* 
* 
* 
* 
* 

{0
|1*

y	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

}	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_12/simple_rnn_cell_14/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_12/simple_rnn_cell_14/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_10Placeholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙d2
ß
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10'simple_rnn_12/simple_rnn_cell_14/kernel%simple_rnn_12/simple_rnn_cell_14/bias1simple_rnn_12/simple_rnn_cell_14/recurrent_kerneldense_9/kerneldense_9/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2421987
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¸
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp;simple_rnn_12/simple_rnn_cell_14/kernel/Read/ReadVariableOpEsimple_rnn_12/simple_rnn_cell_14/recurrent_kernel/Read/ReadVariableOp9simple_rnn_12/simple_rnn_cell_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOpBAdam/simple_rnn_12/simple_rnn_cell_14/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_12/simple_rnn_cell_14/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpBAdam/simple_rnn_12/simple_rnn_cell_14/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_12/simple_rnn_cell_14/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2422963

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/bias'simple_rnn_12/simple_rnn_cell_14/kernel1simple_rnn_12/simple_rnn_cell_14/recurrent_kernel%simple_rnn_12/simple_rnn_cell_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negativesAdam/dense_9/kernel/mAdam/dense_9/bias/m.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/m8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m,Adam/simple_rnn_12/simple_rnn_cell_14/bias/mAdam/dense_9/kernel/vAdam/dense_9/bias/v.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/v8Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v,Adam/simple_rnn_12/simple_rnn_cell_14/bias/v*(
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
#__inference__traced_restore_2423057Ő
ăd
Á
"__inference__wrapped_model_2421236
input_10^
Lsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource:2D[
Msequential_9_simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource:D`
Nsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource:DDF
3sequential_9_dense_9_matmul_readvariableop_resource:	5B
4sequential_9_dense_9_biasadd_readvariableop_resource:
identity˘+sequential_9/dense_9/BiasAdd/ReadVariableOp˘*sequential_9/dense_9/MatMul/ReadVariableOp˘Dsequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘Csequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp˘Esequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp˘ sequential_9/simple_rnn_12/whileX
 sequential_9/simple_rnn_12/ShapeShapeinput_10*
T0*
_output_shapes
:x
.sequential_9/simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_9/simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_9/simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ř
(sequential_9/simple_rnn_12/strided_sliceStridedSlice)sequential_9/simple_rnn_12/Shape:output:07sequential_9/simple_rnn_12/strided_slice/stack:output:09sequential_9/simple_rnn_12/strided_slice/stack_1:output:09sequential_9/simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_9/simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :DÄ
'sequential_9/simple_rnn_12/zeros/packedPack1sequential_9/simple_rnn_12/strided_slice:output:02sequential_9/simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_9/simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ˝
 sequential_9/simple_rnn_12/zerosFill0sequential_9/simple_rnn_12/zeros/packed:output:0/sequential_9/simple_rnn_12/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D~
)sequential_9/simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ľ
$sequential_9/simple_rnn_12/transpose	Transposeinput_102sequential_9/simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2z
"sequential_9/simple_rnn_12/Shape_1Shape(sequential_9/simple_rnn_12/transpose:y:0*
T0*
_output_shapes
:z
0sequential_9/simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*sequential_9/simple_rnn_12/strided_slice_1StridedSlice+sequential_9/simple_rnn_12/Shape_1:output:09sequential_9/simple_rnn_12/strided_slice_1/stack:output:0;sequential_9/simple_rnn_12/strided_slice_1/stack_1:output:0;sequential_9/simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6sequential_9/simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
(sequential_9/simple_rnn_12/TensorArrayV2TensorListReserve?sequential_9/simple_rnn_12/TensorArrayV2/element_shape:output:03sequential_9/simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇĄ
Psequential_9/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ą
Bsequential_9/simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_9/simple_rnn_12/transpose:y:0Ysequential_9/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇz
0sequential_9/simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:đ
*sequential_9/simple_rnn_12/strided_slice_2StridedSlice(sequential_9/simple_rnn_12/transpose:y:09sequential_9/simple_rnn_12/strided_slice_2/stack:output:0;sequential_9/simple_rnn_12/strided_slice_2/stack_1:output:0;sequential_9/simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĐ
Csequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpLsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0ň
4sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMulMatMul3sequential_9/simple_rnn_12/strided_slice_2:output:0Ksequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÎ
Dsequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpMsequential_9_simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0
5sequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAddBiasAdd>sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul:product:0Lsequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÔ
Esequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpNsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0ě
6sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1MatMul)sequential_9/simple_rnn_12/zeros:output:0Msequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dî
1sequential_9/simple_rnn_12/simple_rnn_cell_14/addAddV2>sequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd:output:0@sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŁ
2sequential_9/simple_rnn_12/simple_rnn_cell_14/TanhTanh5sequential_9/simple_rnn_12/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
8sequential_9/simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   
*sequential_9/simple_rnn_12/TensorArrayV2_1TensorListReserveAsequential_9/simple_rnn_12/TensorArrayV2_1/element_shape:output:03sequential_9/simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇa
sequential_9/simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_9/simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙o
-sequential_9/simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ź
 sequential_9/simple_rnn_12/whileWhile6sequential_9/simple_rnn_12/while/loop_counter:output:0<sequential_9/simple_rnn_12/while/maximum_iterations:output:0(sequential_9/simple_rnn_12/time:output:03sequential_9/simple_rnn_12/TensorArrayV2_1:handle:0)sequential_9/simple_rnn_12/zeros:output:03sequential_9/simple_rnn_12/strided_slice_1:output:0Rsequential_9/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resourceMsequential_9_simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resourceNsequential_9_simple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *9
body1R/
-sequential_9_simple_rnn_12_while_body_2421160*9
cond1R/
-sequential_9_simple_rnn_12_while_cond_2421159*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
Ksequential_9/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   
=sequential_9/simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_9/simple_rnn_12/while:output:3Tsequential_9/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0
0sequential_9/simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙|
2sequential_9/simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*sequential_9/simple_rnn_12/strided_slice_3StridedSliceFsequential_9/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:09sequential_9/simple_rnn_12/strided_slice_3/stack:output:0;sequential_9/simple_rnn_12/strided_slice_3/stack_1:output:0;sequential_9/simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_mask
+sequential_9/simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ç
&sequential_9/simple_rnn_12/transpose_1	TransposeFsequential_9/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:04sequential_9/simple_rnn_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
sequential_9/dropout_7/IdentityIdentity*sequential_9/simple_rnn_12/transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDm
sequential_9/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ­
sequential_9/flatten_6/ReshapeReshape(sequential_9/dropout_7/Identity:output:0%sequential_9/flatten_6/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource*
_output_shapes
:	5*
dtype0´
sequential_9/dense_9/MatMulMatMul'sequential_9/flatten_6/Reshape:output:02sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ľ
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_9/dense_9/SigmoidSigmoid%sequential_9/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
IdentityIdentity sequential_9/dense_9/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOpE^sequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOpD^sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOpF^sequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp!^sequential_9/simple_rnn_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp2
Dsequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOpDsequential_9/simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp2
Csequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOpCsequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp2
Esequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOpEsequential_9/simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp2D
 sequential_9/simple_rnn_12/while sequential_9/simple_rnn_12/while:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
×,
Ň
while_body_2422670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
Ű
ń
.__inference_sequential_9_layer_call_fn_2421696
input_10
unknown:2D
	unknown_0:D
	unknown_1:DD
	unknown_2:	5
	unknown_3:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
ß
Ż
while_cond_2422561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2422561___redundant_placeholder05
1while_while_cond_2422561___redundant_placeholder15
1while_while_cond_2422561___redundant_placeholder25
1while_while_cond_2422561___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
ß
Ż
while_cond_2421575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2421575___redundant_placeholder05
1while_while_cond_2421575___redundant_placeholder15
1while_while_cond_2421575___redundant_placeholder25
1while_while_cond_2421575___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:

d
+__inference_dropout_7_layer_call_fn_2422746

inputs
identity˘StatefulPartitionedCallĹ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421732s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
ä9
ö
 simple_rnn_12_while_body_24220598
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_27
3simple_rnn_12_while_simple_rnn_12_strided_slice_1_0s
osimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DV
Hsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:D[
Isimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD 
simple_rnn_12_while_identity"
simple_rnn_12_while_identity_1"
simple_rnn_12_while_identity_2"
simple_rnn_12_while_identity_3"
simple_rnn_12_while_identity_45
1simple_rnn_12_while_simple_rnn_12_strided_slice_1q
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource:2DT
Fsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource:DY
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp˘>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ě
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_12_while_placeholderNsimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ä
<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0ď
-simple_rnn_12/while/simple_rnn_cell_14/MatMulMatMul>simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÂ
=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0ë
.simple_rnn_12/while/simple_rnn_cell_14/BiasAddBiasAdd7simple_rnn_12/while/simple_rnn_cell_14/MatMul:product:0Esimple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DČ
>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ö
/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1MatMul!simple_rnn_12_while_placeholder_2Fsimple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŮ
*simple_rnn_12/while/simple_rnn_cell_14/addAddV27simple_rnn_12/while/simple_rnn_cell_14/BiasAdd:output:09simple_rnn_12/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
+simple_rnn_12/while/simple_rnn_cell_14/TanhTanh.simple_rnn_12/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_12_while_placeholder_1simple_rnn_12_while_placeholder/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇ[
simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_12/while/addAddV2simple_rnn_12_while_placeholder"simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_12/while/add_1AddV24simple_rnn_12_while_simple_rnn_12_while_loop_counter$simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/add_1:z:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ˘
simple_rnn_12/while/Identity_1Identity:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_12/while/Identity_2Identitysimple_rnn_12/while/add:z:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_12/while/Identity_3IdentityHsimple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_12/while/Identity_4Identity/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0^simple_rnn_12/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_12/while/NoOpNoOp>^simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0"I
simple_rnn_12_while_identity_1'simple_rnn_12/while/Identity_1:output:0"I
simple_rnn_12_while_identity_2'simple_rnn_12/while/Identity_2:output:0"I
simple_rnn_12_while_identity_3'simple_rnn_12/while/Identity_3:output:0"I
simple_rnn_12_while_identity_4'simple_rnn_12/while/Identity_4:output:0"h
1simple_rnn_12_while_simple_rnn_12_strided_slice_13simple_rnn_12_while_simple_rnn_12_strided_slice_1_0"
Fsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resourceHsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceIsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"
Esimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resourceGsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"ŕ
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2~
=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2|
<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp2
>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
Ý
ě
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421683

inputs'
simple_rnn_12_2421643:2D#
simple_rnn_12_2421645:D'
simple_rnn_12_2421647:DD"
dense_9_2421677:	5
dense_9_2421679:
identity˘dense_9/StatefulPartitionedCall˘%simple_rnn_12/StatefulPartitionedCall¤
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_12_2421643simple_rnn_12_2421645simple_rnn_12_2421647*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421642ç
dropout_7/PartitionedCallPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421655Ř
flatten_6/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_9_2421677dense_9_2421679*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp ^dense_9/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ş4
¤
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421519

inputs,
simple_rnn_cell_14_2421444:2D(
simple_rnn_cell_14_2421446:D,
simple_rnn_cell_14_2421448:DD
identity˘*simple_rnn_cell_14/StatefulPartitionedCall˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskđ
*simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_14_2421444simple_rnn_cell_14_2421446simple_rnn_cell_14_2421448*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421404n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_14_2421444simple_rnn_cell_14_2421446simple_rnn_cell_14_2421448*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2421456*
condR
while_cond_2421455*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D{
NoOpNoOp+^simple_rnn_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2X
*simple_rnn_cell_14/StatefulPartitionedCall*simple_rnn_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ę=
Ă
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421856

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2421790*
condR
while_cond_2421789*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
ą
G
+__inference_dropout_7_layer_call_fn_2422741

inputs
identityľ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421655d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
Ú

š
 simple_rnn_12_while_cond_24220588
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_2:
6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422058___redundant_placeholder0Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422058___redundant_placeholder1Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422058___redundant_placeholder2Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422058___redundant_placeholder3 
simple_rnn_12_while_identity

simple_rnn_12/while/LessLesssimple_rnn_12_while_placeholder6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
Ŕ
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_2422774

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
>
Ĺ
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422520
inputs_0C
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while=
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2422454*
condR
while_cond_2422453*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙DŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ß
Ż
while_cond_2422345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2422345___redundant_placeholder05
1while_while_cond_2422345___redundant_placeholder15
1while_while_cond_2422345___redundant_placeholder25
1while_while_cond_2422345___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:


I__inference_sequential_9_layer_call_and_return_conditional_losses_2421900

inputs'
simple_rnn_12_2421885:2D#
simple_rnn_12_2421887:D'
simple_rnn_12_2421889:DD"
dense_9_2421894:	5
dense_9_2421896:
identity˘dense_9/StatefulPartitionedCall˘!dropout_7/StatefulPartitionedCall˘%simple_rnn_12/StatefulPartitionedCall¤
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_12_2421885simple_rnn_12_2421887simple_rnn_12_2421889*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421856÷
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421732ŕ
flatten_6/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_9_2421894dense_9_2421896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
NoOpNoOp ^dense_9/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
˙
ę
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421404

inputs

states0
matmul_readvariableop_resource:2D-
biasadd_readvariableop_resource:D2
 matmul_1_readvariableop_resource:DD
identity

identity_1˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DG
TanhTanhadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
 
_user_specified_namestates
×,
Ň
while_body_2421576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
Ş4
¤
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421360

inputs,
simple_rnn_cell_14_2421285:2D(
simple_rnn_cell_14_2421287:D,
simple_rnn_cell_14_2421289:DD
identity˘*simple_rnn_cell_14/StatefulPartitionedCall˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskđ
*simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_14_2421285simple_rnn_cell_14_2421287simple_rnn_cell_14_2421289*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421284n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_14_2421285simple_rnn_cell_14_2421287simple_rnn_cell_14_2421289*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2421297*
condR
while_cond_2421296*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D{
NoOpNoOp+^simple_rnn_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2X
*simple_rnn_cell_14/StatefulPartitionedCall*simple_rnn_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
>
Ĺ
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422412
inputs_0C
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while=
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2422346*
condR
while_cond_2422345*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Dk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙DŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ß
Ż
while_cond_2421296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2421296___redundant_placeholder05
1while_while_cond_2421296___redundant_placeholder15
1while_while_cond_2421296___redundant_placeholder25
1while_while_cond_2421296___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
ä9
ö
 simple_rnn_12_while_body_24221778
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_27
3simple_rnn_12_while_simple_rnn_12_strided_slice_1_0s
osimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DV
Hsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:D[
Isimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD 
simple_rnn_12_while_identity"
simple_rnn_12_while_identity_1"
simple_rnn_12_while_identity_2"
simple_rnn_12_while_identity_3"
simple_rnn_12_while_identity_45
1simple_rnn_12_while_simple_rnn_12_strided_slice_1q
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource:2DT
Fsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource:DY
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp˘>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
Esimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ě
7simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_12_while_placeholderNsimple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ä
<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0ď
-simple_rnn_12/while/simple_rnn_cell_14/MatMulMatMul>simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÂ
=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0ë
.simple_rnn_12/while/simple_rnn_cell_14/BiasAddBiasAdd7simple_rnn_12/while/simple_rnn_cell_14/MatMul:product:0Esimple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DČ
>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ö
/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1MatMul!simple_rnn_12_while_placeholder_2Fsimple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŮ
*simple_rnn_12/while/simple_rnn_cell_14/addAddV27simple_rnn_12/while/simple_rnn_cell_14/BiasAdd:output:09simple_rnn_12/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
+simple_rnn_12/while/simple_rnn_cell_14/TanhTanh.simple_rnn_12/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
8simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_12_while_placeholder_1simple_rnn_12_while_placeholder/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇ[
simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_12/while/addAddV2simple_rnn_12_while_placeholder"simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_12/while/add_1AddV24simple_rnn_12_while_simple_rnn_12_while_loop_counter$simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/add_1:z:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ˘
simple_rnn_12/while/Identity_1Identity:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_12/while/Identity_2Identitysimple_rnn_12/while/add:z:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_12/while/Identity_3IdentityHsimple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_12/while/Identity_4Identity/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0^simple_rnn_12/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_12/while/NoOpNoOp>^simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=^simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp?^simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0"I
simple_rnn_12_while_identity_1'simple_rnn_12/while/Identity_1:output:0"I
simple_rnn_12_while_identity_2'simple_rnn_12/while/Identity_2:output:0"I
simple_rnn_12_while_identity_3'simple_rnn_12/while/Identity_3:output:0"I
simple_rnn_12_while_identity_4'simple_rnn_12/while/Identity_4:output:0"h
1simple_rnn_12_while_simple_rnn_12_strided_slice_13simple_rnn_12_while_simple_rnn_12_strided_slice_1_0"
Fsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resourceHsimple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"
Gsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceIsimple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"
Esimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resourceGsimple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"ŕ
msimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorosimple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2~
=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp=simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2|
<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp<simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp2
>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp>simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
˝

Ü
4__inference_simple_rnn_cell_14_layer_call_fn_2422808

inputs
states_0
unknown:2D
	unknown_0:D
	unknown_1:DD
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421284o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
"
_user_specified_name
states/0
ą]
×
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422260

inputsQ
?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource:2DN
@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource:DS
Asimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD9
&dense_9_matmul_readvariableop_resource:	55
'dense_9_biasadd_readvariableop_resource:
identity˘dense_9/BiasAdd/ReadVariableOp˘dense_9/MatMul/ReadVariableOp˘7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp˘8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp˘simple_rnn_12/whileI
simple_rnn_12/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_12/strided_sliceStridedSlicesimple_rnn_12/Shape:output:0*simple_rnn_12/strided_slice/stack:output:0,simple_rnn_12/strided_slice/stack_1:output:0,simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :D
simple_rnn_12/zeros/packedPack$simple_rnn_12/strided_slice:output:0%simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_12/zerosFill#simple_rnn_12/zeros/packed:output:0"simple_rnn_12/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dq
simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_12/transpose	Transposeinputs%simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2`
simple_rnn_12/Shape_1Shapesimple_rnn_12/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
simple_rnn_12/strided_slice_1StridedSlicesimple_rnn_12/Shape_1:output:0,simple_rnn_12/strided_slice_1/stack:output:0.simple_rnn_12/strided_slice_1/stack_1:output:0.simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ţ
simple_rnn_12/TensorArrayV2TensorListReserve2simple_rnn_12/TensorArrayV2/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_12/transpose:y:0Lsimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇm
#simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
simple_rnn_12/strided_slice_2StridedSlicesimple_rnn_12/transpose:y:0,simple_rnn_12/strided_slice_2/stack:output:0.simple_rnn_12/strided_slice_2/stack_1:output:0.simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskś
6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ë
'simple_rnn_12/simple_rnn_cell_14/MatMulMatMul&simple_rnn_12/strided_slice_2:output:0>simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D´
7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ů
(simple_rnn_12/simple_rnn_cell_14/BiasAddBiasAdd1simple_rnn_12/simple_rnn_cell_14/MatMul:product:0?simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dş
8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0Ĺ
)simple_rnn_12/simple_rnn_cell_14/MatMul_1MatMulsimple_rnn_12/zeros:output:0@simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÇ
$simple_rnn_12/simple_rnn_cell_14/addAddV21simple_rnn_12/simple_rnn_cell_14/BiasAdd:output:03simple_rnn_12/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
%simple_rnn_12/simple_rnn_cell_14/TanhTanh(simple_rnn_12/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D|
+simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   â
simple_rnn_12/TensorArrayV2_1TensorListReserve4simple_rnn_12/TensorArrayV2_1/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇT
simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙b
 simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_12/whileWhile)simple_rnn_12/while/loop_counter:output:0/simple_rnn_12/while/maximum_iterations:output:0simple_rnn_12/time:output:0&simple_rnn_12/TensorArrayV2_1:handle:0simple_rnn_12/zeros:output:0&simple_rnn_12/strided_slice_1:output:0Esimple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resourceAsimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_12_while_body_2422177*,
cond$R"
 simple_rnn_12_while_cond_2422176*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ě
0simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_12/while:output:3Gsimple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0v
#simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙o
%simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_12/strided_slice_3StridedSlice9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_12/strided_slice_3/stack:output:0.simple_rnn_12/strided_slice_3/stack_1:output:0.simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_masks
simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŕ
simple_rnn_12/transpose_1	Transpose9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_7/dropout/MulMulsimple_rnn_12/transpose_1:y:0 dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDd
dropout_7/dropout/ShapeShapesimple_rnn_12/transpose_1:y:0*
T0*
_output_shapes
:¤
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Č
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  
flatten_6/ReshapeReshapedropout_7/dropout/Mul_1:z:0flatten_6/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	5*
dtype0
dense_9/MatMulMatMulflatten_6/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_9/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp8^simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp7^simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp9^simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp^simple_rnn_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2r
7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp2p
6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp2t
8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp2*
simple_rnn_12/whilesimple_rnn_12/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ŕ
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
ß
Ż
while_cond_2422669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2422669___redundant_placeholder05
1while_while_cond_2422669___redundant_placeholder15
1while_while_cond_2422669___redundant_placeholder25
1while_while_cond_2422669___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
Ť
G
+__inference_flatten_6_layer_call_fn_2422768

inputs
identity˛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
ß
Ż
while_cond_2422453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2422453___redundant_placeholder05
1while_while_cond_2422453___redundant_placeholder15
1while_while_cond_2422453___redundant_placeholder25
1while_while_cond_2422453___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:


ö
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676

inputs1
matmul_readvariableop_resource:	5-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	5*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
 
_user_specified_nameinputs
ß
Ż
while_cond_2421789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2421789___redundant_placeholder05
1while_while_cond_2421789___redundant_placeholder15
1while_while_cond_2421789___redundant_placeholder25
1while_while_cond_2421789___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
ş
°
-sequential_9_simple_rnn_12_while_cond_2421159R
Nsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_loop_counterX
Tsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_maximum_iterations0
,sequential_9_simple_rnn_12_while_placeholder2
.sequential_9_simple_rnn_12_while_placeholder_12
.sequential_9_simple_rnn_12_while_placeholder_2T
Psequential_9_simple_rnn_12_while_less_sequential_9_simple_rnn_12_strided_slice_1k
gsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_cond_2421159___redundant_placeholder0k
gsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_cond_2421159___redundant_placeholder1k
gsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_cond_2421159___redundant_placeholder2k
gsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_cond_2421159___redundant_placeholder3-
)sequential_9_simple_rnn_12_while_identity
Î
%sequential_9/simple_rnn_12/while/LessLess,sequential_9_simple_rnn_12_while_placeholderPsequential_9_simple_rnn_12_while_less_sequential_9_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: 
)sequential_9/simple_rnn_12/while/IdentityIdentity)sequential_9/simple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_9_simple_rnn_12_while_identity2sequential_9/simple_rnn_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:

š
/__inference_simple_rnn_12_layer_call_fn_2422293

inputs
unknown:2D
	unknown_0:D
	unknown_1:DD
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421642s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ę=
Ă
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422628

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2422562*
condR
while_cond_2422561*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
é
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422751

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
˝

Ü
4__inference_simple_rnn_cell_14_layer_call_fn_2422822

inputs
states_0
unknown:2D
	unknown_0:D
	unknown_1:DD
identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
"
_user_specified_name
states/0
Ő
ď
.__inference_sequential_9_layer_call_fn_2422002

inputs
unknown:2D
	unknown_0:D
	unknown_1:DD
	unknown_2:	5
	unknown_3:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs

ě
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422839

inputs
states_00
matmul_readvariableop_resource:2D-
biasadd_readvariableop_resource:D2
 matmul_1_readvariableop_resource:DD
identity

identity_1˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DG
TanhTanhadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
"
_user_specified_name
states/0
Ű
ń
.__inference_sequential_9_layer_call_fn_2421928
input_10
unknown:2D
	unknown_0:D
	unknown_1:DD
	unknown_2:	5
	unknown_3:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421900o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
Ö?
Ą
 __inference__traced_save_2422963
file_prefix-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableopF
Bsavev2_simple_rnn_12_simple_rnn_cell_14_kernel_read_readvariableopP
Lsavev2_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_12_simple_rnn_cell_14_bias_read_readvariableop(
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
*savev2_false_negatives_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_12_simple_rnn_cell_14_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_12_simple_rnn_cell_14_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_12_simple_rnn_cell_14_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_12_simple_rnn_cell_14_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
dtype0*¸
valueŽBŤB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH§
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableopBsavev2_simple_rnn_12_simple_rnn_cell_14_kernel_read_readvariableopLsavev2_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_read_readvariableop@savev2_simple_rnn_12_simple_rnn_cell_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableopIsavev2_adam_simple_rnn_12_simple_rnn_cell_14_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_12_simple_rnn_cell_14_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopIsavev2_adam_simple_rnn_12_simple_rnn_cell_14_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_12_simple_rnn_cell_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*Č
_input_shapesś
ł: :	5::2D:DD:D: : : : : : : : : :Č:Č:Č:Č:	5::2D:DD:D:	5::2D:DD:D: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	5: 

_output_shapes
::$ 

_output_shapes

:2D:$ 

_output_shapes

:DD: 

_output_shapes
:D:
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
:	5: 

_output_shapes
::$ 

_output_shapes

:2D:$ 

_output_shapes

:DD: 

_output_shapes
:D:%!

_output_shapes
:	5: 

_output_shapes
::$ 

_output_shapes

:2D:$ 

_output_shapes

:DD: 

_output_shapes
:D:

_output_shapes
: 
é
d
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421655

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs
!
ß
while_body_2421456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_14_2421478_0:2D0
"while_simple_rnn_cell_14_2421480_0:D4
"while_simple_rnn_cell_14_2421482_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_14_2421478:2D.
 while_simple_rnn_cell_14_2421480:D2
 while_simple_rnn_cell_14_2421482:DD˘0while/simple_rnn_cell_14/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ť
0while/simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_14_2421478_0"while_simple_rnn_cell_14_2421480_0"while_simple_rnn_cell_14_2421482_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421404â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity9while/simple_rnn_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D

while/NoOpNoOp1^while/simple_rnn_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_14_2421478"while_simple_rnn_cell_14_2421478_0"F
 while_simple_rnn_cell_14_2421480"while_simple_rnn_cell_14_2421480_0"F
 while_simple_rnn_cell_14_2421482"while_simple_rnn_cell_14_2421482_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2d
0while/simple_rnn_cell_14/StatefulPartitionedCall0while/simple_rnn_cell_14/StatefulPartitionedCall: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
ůE

-sequential_9_simple_rnn_12_while_body_2421160R
Nsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_loop_counterX
Tsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_maximum_iterations0
,sequential_9_simple_rnn_12_while_placeholder2
.sequential_9_simple_rnn_12_while_placeholder_12
.sequential_9_simple_rnn_12_while_placeholder_2Q
Msequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_strided_slice_1_0
sequential_9_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0f
Tsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2Dc
Usequential_9_simple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:Dh
Vsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD-
)sequential_9_simple_rnn_12_while_identity/
+sequential_9_simple_rnn_12_while_identity_1/
+sequential_9_simple_rnn_12_while_identity_2/
+sequential_9_simple_rnn_12_while_identity_3/
+sequential_9_simple_rnn_12_while_identity_4O
Ksequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_strided_slice_1
sequential_9_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_12_tensorarrayunstack_tensorlistfromtensord
Rsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource:2Da
Ssequential_9_simple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource:Df
Tsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘Jsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘Isequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp˘Ksequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpŁ
Rsequential_9/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ž
Dsequential_9/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_9_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0,sequential_9_simple_rnn_12_while_placeholder[sequential_9/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ţ
Isequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOpTsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0
:sequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMulMatMulKsequential_9/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÜ
Jsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOpUsequential_9_simple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0
;sequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAddBiasAddDsequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul:product:0Rsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ
Ksequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpVsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0ý
<sequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1MatMul.sequential_9_simple_rnn_12_while_placeholder_2Ssequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
7sequential_9/simple_rnn_12/while/simple_rnn_cell_14/addAddV2Dsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd:output:0Fsequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
8sequential_9/simple_rnn_12/while/simple_rnn_cell_14/TanhTanh;sequential_9/simple_rnn_12/while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dś
Esequential_9/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_9_simple_rnn_12_while_placeholder_1,sequential_9_simple_rnn_12_while_placeholder<sequential_9/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇh
&sequential_9/simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$sequential_9/simple_rnn_12/while/addAddV2,sequential_9_simple_rnn_12_while_placeholder/sequential_9/simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_9/simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&sequential_9/simple_rnn_12/while/add_1AddV2Nsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_loop_counter1sequential_9/simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: Ş
)sequential_9/simple_rnn_12/while/IdentityIdentity*sequential_9/simple_rnn_12/while/add_1:z:0&^sequential_9/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: Ö
+sequential_9/simple_rnn_12/while/Identity_1IdentityTsequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_while_maximum_iterations&^sequential_9/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: Ş
+sequential_9/simple_rnn_12/while/Identity_2Identity(sequential_9/simple_rnn_12/while/add:z:0&^sequential_9/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ×
+sequential_9/simple_rnn_12/while/Identity_3IdentityUsequential_9/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_9/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: Ď
+sequential_9/simple_rnn_12/while/Identity_4Identity<sequential_9/simple_rnn_12/while/simple_rnn_cell_14/Tanh:y:0&^sequential_9/simple_rnn_12/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÎ
%sequential_9/simple_rnn_12/while/NoOpNoOpK^sequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpJ^sequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOpL^sequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "_
)sequential_9_simple_rnn_12_while_identity2sequential_9/simple_rnn_12/while/Identity:output:0"c
+sequential_9_simple_rnn_12_while_identity_14sequential_9/simple_rnn_12/while/Identity_1:output:0"c
+sequential_9_simple_rnn_12_while_identity_24sequential_9/simple_rnn_12/while/Identity_2:output:0"c
+sequential_9_simple_rnn_12_while_identity_34sequential_9/simple_rnn_12/while/Identity_3:output:0"c
+sequential_9_simple_rnn_12_while_identity_44sequential_9/simple_rnn_12/while/Identity_4:output:0"
Ksequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_strided_slice_1Msequential_9_simple_rnn_12_while_sequential_9_simple_rnn_12_strided_slice_1_0"Ź
Ssequential_9_simple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resourceUsequential_9_simple_rnn_12_while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"Ž
Tsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resourceVsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"Ş
Rsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resourceTsequential_9_simple_rnn_12_while_simple_rnn_cell_14_matmul_readvariableop_resource_0"
sequential_9_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorsequential_9_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2
Jsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpJsequential_9/simple_rnn_12/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2
Isequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOpIsequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul/ReadVariableOp2
Ksequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOpKsequential_9/simple_rnn_12/while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
×,
Ň
while_body_2421790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
Ůr
Š
#__inference__traced_restore_2423057
file_prefix2
assignvariableop_dense_9_kernel:	5-
assignvariableop_1_dense_9_bias:L
:assignvariableop_2_simple_rnn_12_simple_rnn_cell_14_kernel:2DV
Dassignvariableop_3_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel:DDF
8assignvariableop_4_simple_rnn_12_simple_rnn_cell_14_bias:D&
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
#assignvariableop_17_false_negatives:	Č<
)assignvariableop_18_adam_dense_9_kernel_m:	55
'assignvariableop_19_adam_dense_9_bias_m:T
Bassignvariableop_20_adam_simple_rnn_12_simple_rnn_cell_14_kernel_m:2D^
Lassignvariableop_21_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_m:DDN
@assignvariableop_22_adam_simple_rnn_12_simple_rnn_cell_14_bias_m:D<
)assignvariableop_23_adam_dense_9_kernel_v:	55
'assignvariableop_24_adam_dense_9_bias_v:T
Bassignvariableop_25_adam_simple_rnn_12_simple_rnn_cell_14_kernel_v:2D^
Lassignvariableop_26_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_v:DDN
@assignvariableop_27_adam_simple_rnn_12_simple_rnn_cell_14_bias_v:D
identity_29˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¸
valueŽBŤB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŞ
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
:
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_2AssignVariableOp:assignvariableop_2_simple_rnn_12_simple_rnn_cell_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOp_3AssignVariableOpDassignvariableop_3_simple_rnn_12_simple_rnn_cell_14_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp8assignvariableop_4_simple_rnn_12_simple_rnn_cell_14_biasIdentity_4:output:0"/device:CPU:0*
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
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_9_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_9_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_simple_rnn_12_simple_rnn_cell_14_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_21AssignVariableOpLassignvariableop_21_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_simple_rnn_12_simple_rnn_cell_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_9_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_9_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOp_25AssignVariableOpBassignvariableop_25_adam_simple_rnn_12_simple_rnn_cell_14_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_26AssignVariableOpLassignvariableop_26_adam_simple_rnn_12_simple_rnn_cell_14_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_simple_rnn_12_simple_rnn_cell_14_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ˇ
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
_user_specified_namefile_prefix
ŰU
×
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422135

inputsQ
?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource:2DN
@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource:DS
Asimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD9
&dense_9_matmul_readvariableop_resource:	55
'dense_9_biasadd_readvariableop_resource:
identity˘dense_9/BiasAdd/ReadVariableOp˘dense_9/MatMul/ReadVariableOp˘7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp˘8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp˘simple_rnn_12/whileI
simple_rnn_12/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_12/strided_sliceStridedSlicesimple_rnn_12/Shape:output:0*simple_rnn_12/strided_slice/stack:output:0,simple_rnn_12/strided_slice/stack_1:output:0,simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :D
simple_rnn_12/zeros/packedPack$simple_rnn_12/strided_slice:output:0%simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_12/zerosFill#simple_rnn_12/zeros/packed:output:0"simple_rnn_12/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dq
simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_12/transpose	Transposeinputs%simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2`
simple_rnn_12/Shape_1Shapesimple_rnn_12/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
simple_rnn_12/strided_slice_1StridedSlicesimple_rnn_12/Shape_1:output:0,simple_rnn_12/strided_slice_1/stack:output:0.simple_rnn_12/strided_slice_1/stack_1:output:0.simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ţ
simple_rnn_12/TensorArrayV2TensorListReserve2simple_rnn_12/TensorArrayV2/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
Csimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
5simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_12/transpose:y:0Lsimple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇm
#simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
simple_rnn_12/strided_slice_2StridedSlicesimple_rnn_12/transpose:y:0,simple_rnn_12/strided_slice_2/stack:output:0.simple_rnn_12/strided_slice_2/stack_1:output:0.simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskś
6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ë
'simple_rnn_12/simple_rnn_cell_14/MatMulMatMul&simple_rnn_12/strided_slice_2:output:0>simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D´
7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ů
(simple_rnn_12/simple_rnn_cell_14/BiasAddBiasAdd1simple_rnn_12/simple_rnn_cell_14/MatMul:product:0?simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dş
8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0Ĺ
)simple_rnn_12/simple_rnn_cell_14/MatMul_1MatMulsimple_rnn_12/zeros:output:0@simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DÇ
$simple_rnn_12/simple_rnn_cell_14/addAddV21simple_rnn_12/simple_rnn_cell_14/BiasAdd:output:03simple_rnn_12/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
%simple_rnn_12/simple_rnn_cell_14/TanhTanh(simple_rnn_12/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D|
+simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   â
simple_rnn_12/TensorArrayV2_1TensorListReserve4simple_rnn_12/TensorArrayV2_1/element_shape:output:0&simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇT
simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙b
 simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_12/whileWhile)simple_rnn_12/while/loop_counter:output:0/simple_rnn_12/while/maximum_iterations:output:0simple_rnn_12/time:output:0&simple_rnn_12/TensorArrayV2_1:handle:0simple_rnn_12/zeros:output:0&simple_rnn_12/strided_slice_1:output:0Esimple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_12_simple_rnn_cell_14_matmul_readvariableop_resource@simple_rnn_12_simple_rnn_cell_14_biasadd_readvariableop_resourceAsimple_rnn_12_simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_12_while_body_2422059*,
cond$R"
 simple_rnn_12_while_cond_2422058*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
>simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ě
0simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_12/while:output:3Gsimple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0v
#simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙o
%simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_12/strided_slice_3StridedSlice9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_12/strided_slice_3/stack:output:0.simple_rnn_12/strided_slice_3/stack_1:output:0.simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_masks
simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŕ
simple_rnn_12/transpose_1	Transpose9simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDs
dropout_7/IdentityIdentitysimple_rnn_12/transpose_1:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙  
flatten_6/ReshapeReshapedropout_7/Identity:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	5*
dtype0
dense_9/MatMulMatMulflatten_6/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentitydense_9/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp8^simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp7^simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp9^simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp^simple_rnn_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2r
7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp7simple_rnn_12/simple_rnn_cell_14/BiasAdd/ReadVariableOp2p
6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp6simple_rnn_12/simple_rnn_cell_14/MatMul/ReadVariableOp2t
8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp8simple_rnn_12/simple_rnn_cell_14/MatMul_1/ReadVariableOp2*
simple_rnn_12/whilesimple_rnn_12/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ĺ

)__inference_dense_9_layer_call_fn_2422783

inputs
unknown:	5
	unknown_0:
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙5: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
 
_user_specified_nameinputs
!
ß
while_body_2421297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
"while_simple_rnn_cell_14_2421319_0:2D0
"while_simple_rnn_cell_14_2421321_0:D4
"while_simple_rnn_cell_14_2421323_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
 while_simple_rnn_cell_14_2421319:2D.
 while_simple_rnn_cell_14_2421321:D2
 while_simple_rnn_cell_14_2421323:DD˘0while/simple_rnn_cell_14/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ť
0while/simple_rnn_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_simple_rnn_cell_14_2421319_0"while_simple_rnn_cell_14_2421321_0"while_simple_rnn_cell_14_2421323_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙D:˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421284â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder9while/simple_rnn_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity9while/simple_rnn_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D

while/NoOpNoOp1^while/simple_rnn_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"F
 while_simple_rnn_cell_14_2421319"while_simple_rnn_cell_14_2421319_0"F
 while_simple_rnn_cell_14_2421321"while_simple_rnn_cell_14_2421321_0"F
 while_simple_rnn_cell_14_2421323"while_simple_rnn_cell_14_2421323_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2d
0while/simple_rnn_cell_14/StatefulPartitionedCall0while/simple_rnn_cell_14/StatefulPartitionedCall: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
×,
Ň
while_body_2422562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 


e
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421732

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
:˙˙˙˙˙˙˙˙˙dDC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ş
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs


ö
D__inference_dense_9_layer_call_and_return_conditional_losses_2422794

inputs1
matmul_readvariableop_resource:	5-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	5*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙5
 
_user_specified_nameinputs
˙
ę
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2421284

inputs

states0
matmul_readvariableop_resource:2D-
biasadd_readvariableop_resource:D2
 matmul_1_readvariableop_resource:DD
identity

identity_1˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DG
TanhTanhadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
 
_user_specified_namestates
´
ť
/__inference_simple_rnn_12_layer_call_fn_2422282
inputs_0
unknown:2D
	unknown_0:D
	unknown_1:DD
identity˘StatefulPartitionedCallű
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421519|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ă
î
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421946
input_10'
simple_rnn_12_2421931:2D#
simple_rnn_12_2421933:D'
simple_rnn_12_2421935:DD"
dense_9_2421940:	5
dense_9_2421942:
identity˘dense_9/StatefulPartitionedCall˘%simple_rnn_12/StatefulPartitionedCallŚ
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallinput_10simple_rnn_12_2421931simple_rnn_12_2421933simple_rnn_12_2421935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421642ç
dropout_7/PartitionedCallPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421655Ř
flatten_6/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_9_2421940dense_9_2421942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp ^dense_9/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
´
ť
/__inference_simple_rnn_12_layer_call_fn_2422271
inputs_0
unknown:2D
	unknown_0:D
	unknown_1:DD
identity˘StatefulPartitionedCallű
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421360|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0

ě
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422856

inputs
states_00
matmul_readvariableop_resource:2D-
biasadd_readvariableop_resource:D2
 matmul_1_readvariableop_resource:DD
identity

identity_1˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DG
TanhTanhadd:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙D: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
"
_user_specified_name
states/0
×,
Ň
while_body_2422454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 
ß
Ż
while_cond_2421455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2421455___redundant_placeholder05
1while_while_cond_2421455___redundant_placeholder15
1while_while_cond_2421455___redundant_placeholder25
1while_while_cond_2421455___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
×,
Ň
while_body_2422346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_14_matmul_readvariableop_resource_0:2DH
:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0:DM
;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0:DD
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_14_matmul_readvariableop_resource:2DF
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:DK
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource:DD˘/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp˘.while/simple_rnn_cell_14/MatMul/ReadVariableOp˘0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0¨
.while/simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2D*
dtype0Ĺ
while/simple_rnn_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŚ
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:D*
dtype0Á
 while/simple_rnn_cell_14/BiasAddBiasAdd)while/simple_rnn_cell_14/MatMul:product:07while/simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŹ
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:DD*
dtype0Ź
!while/simple_rnn_cell_14/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DŻ
while/simple_rnn_cell_14/addAddV2)while/simple_rnn_cell_14/BiasAdd:output:0+while/simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dy
while/simple_rnn_cell_14/TanhTanh while/simple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙DĘ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder!while/simple_rnn_cell_14/Tanh:y:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_14/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dâ

while/NoOpNoOp0^while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_14/MatMul/ReadVariableOp1^while/simple_rnn_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_14_biasadd_readvariableop_resource:while_simple_rnn_cell_14_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_14_matmul_1_readvariableop_resource;while_simple_rnn_cell_14_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_14_matmul_readvariableop_resource9while_simple_rnn_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : 2b
/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp/while/simple_rnn_cell_14/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_14/MatMul/ReadVariableOp.while/simple_rnn_cell_14/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp0while/simple_rnn_cell_14/MatMul_1/ReadVariableOp: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
: 


e
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422763

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
:˙˙˙˙˙˙˙˙˙dDC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ş
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙dD:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
 
_user_specified_nameinputs


I__inference_sequential_9_layer_call_and_return_conditional_losses_2421964
input_10'
simple_rnn_12_2421949:2D#
simple_rnn_12_2421951:D'
simple_rnn_12_2421953:DD"
dense_9_2421958:	5
dense_9_2421960:
identity˘dense_9/StatefulPartitionedCall˘!dropout_7/StatefulPartitionedCall˘%simple_rnn_12/StatefulPartitionedCallŚ
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallinput_10simple_rnn_12_2421949simple_rnn_12_2421951simple_rnn_12_2421953*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421856÷
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_7_layer_call_and_return_conditional_losses_2421732ŕ
flatten_6/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙5* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_2421663
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_9_2421958dense_9_2421960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_2421676w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
NoOpNoOp ^dense_9/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
Ę=
Ă
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422736

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2422670*
condR
while_cond_2422669*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ú

š
 simple_rnn_12_while_cond_24221768
4simple_rnn_12_while_simple_rnn_12_while_loop_counter>
:simple_rnn_12_while_simple_rnn_12_while_maximum_iterations#
simple_rnn_12_while_placeholder%
!simple_rnn_12_while_placeholder_1%
!simple_rnn_12_while_placeholder_2:
6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422176___redundant_placeholder0Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422176___redundant_placeholder1Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422176___redundant_placeholder2Q
Msimple_rnn_12_while_simple_rnn_12_while_cond_2422176___redundant_placeholder3 
simple_rnn_12_while_identity

simple_rnn_12/while/LessLesssimple_rnn_12_while_placeholder6simple_rnn_12_while_less_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_12/while/IdentityIdentitysimple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_12_while_identity%simple_rnn_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :˙˙˙˙˙˙˙˙˙D: ::::: 
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
:˙˙˙˙˙˙˙˙˙D:

_output_shapes
: :

_output_shapes
:
Ő
ď
.__inference_sequential_9_layer_call_fn_2422017

inputs
unknown:2D
	unknown_0:D
	unknown_1:DD
	unknown_2:	5
	unknown_3:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421900o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs

š
/__inference_simple_rnn_12_layer_call_fn_2422304

inputs
unknown:2D
	unknown_0:D
	unknown_1:DD
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421856s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs
Ť
č
%__inference_signature_wrapper_2421987
input_10
unknown:2D
	unknown_0:D
	unknown_1:DD
	unknown_2:	5
	unknown_3:
identity˘StatefulPartitionedCallŕ
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2421236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙d2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
"
_user_specified_name
input_10
Ę=
Ă
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2421642

inputsC
1simple_rnn_cell_14_matmul_readvariableop_resource:2D@
2simple_rnn_cell_14_biasadd_readvariableop_resource:DE
3simple_rnn_cell_14_matmul_1_readvariableop_resource:DD
identity˘)simple_rnn_cell_14/BiasAdd/ReadVariableOp˘(simple_rnn_cell_14/MatMul/ReadVariableOp˘*simple_rnn_cell_14/MatMul_1/ReadVariableOp˘while;
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
value	B :Ds
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
:˙˙˙˙˙˙˙˙˙Dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
(simple_rnn_cell_14/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_14_matmul_readvariableop_resource*
_output_shapes

:2D*
dtype0Ą
simple_rnn_cell_14/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
)simple_rnn_cell_14/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_14_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0Ż
simple_rnn_cell_14/BiasAddBiasAdd#simple_rnn_cell_14/MatMul:product:01simple_rnn_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
*simple_rnn_cell_14/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:DD*
dtype0
simple_rnn_cell_14/MatMul_1MatMulzeros:output:02simple_rnn_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D
simple_rnn_cell_14/addAddV2#simple_rnn_cell_14/BiasAdd:output:0%simple_rnn_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dm
simple_rnn_cell_14/TanhTanhsimple_rnn_cell_14/add:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
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
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_14_matmul_readvariableop_resource2simple_rnn_cell_14_biasadd_readvariableop_resource3simple_rnn_cell_14_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2421576*
condR
while_cond_2421575*8
output_shapes'
%: : : : :˙˙˙˙˙˙˙˙˙D: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d˙˙˙˙˙˙˙˙˙D*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙D*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDb
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dDŇ
NoOpNoOp*^simple_rnn_cell_14/BiasAdd/ReadVariableOp)^simple_rnn_cell_14/MatMul/ReadVariableOp+^simple_rnn_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d2: : : 2V
)simple_rnn_cell_14/BiasAdd/ReadVariableOp)simple_rnn_cell_14/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_14/MatMul/ReadVariableOp(simple_rnn_cell_14/MatMul/ReadVariableOp2X
*simple_rnn_cell_14/MatMul_1/ReadVariableOp*simple_rnn_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d2
 
_user_specified_nameinputs"żL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*°
serving_default
A
input_105
serving_default_input_10:0˙˙˙˙˙˙˙˙˙d2;
dense_90
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ŮĆ
Î
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
Ă
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
ź
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ľ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
C
+0
,1
-2
)3
*4"
trackable_list_wrapper
C
+0
,1
-2
)3
*4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
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
î
3trace_0
4trace_1
5trace_2
6trace_32
.__inference_sequential_9_layer_call_fn_2421696
.__inference_sequential_9_layer_call_fn_2422002
.__inference_sequential_9_layer_call_fn_2422017
.__inference_sequential_9_layer_call_fn_2421928Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 z3trace_0z4trace_1z5trace_2z6trace_3
Ú
7trace_0
8trace_1
9trace_2
:trace_32ď
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422135
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422260
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421946
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421964Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 z7trace_0z8trace_1z9trace_2z:trace_3
ÎBË
"__inference__wrapped_model_2421236input_10"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ˇ
;iter

<beta_1

=beta_2
	>decay
?learning_rate)m*m+m,m-m)v*v+v,v-v"
	optimizer
,
@serving_default"
signature_map
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
š

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

Gtrace_0
Htrace_1
Itrace_2
Jtrace_32
/__inference_simple_rnn_12_layer_call_fn_2422271
/__inference_simple_rnn_12_layer_call_fn_2422282
/__inference_simple_rnn_12_layer_call_fn_2422293
/__inference_simple_rnn_12_layer_call_fn_2422304Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
ó
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422412
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422520
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422628
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422736Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
č
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
U_random_generator

+kernel
,recurrent_kernel
-bias"
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
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Č
[trace_0
\trace_12
+__inference_dropout_7_layer_call_fn_2422741
+__inference_dropout_7_layer_call_fn_2422746´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
 z[trace_0z\trace_1
ţ
]trace_0
^trace_12Ç
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422751
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422763´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
 z]trace_0z^trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ď
dtrace_02Ň
+__inference_flatten_6_layer_call_fn_2422768˘
˛
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
annotationsŞ *
 zdtrace_0

etrace_02í
F__inference_flatten_6_layer_call_and_return_conditional_losses_2422774˘
˛
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
annotationsŞ *
 zetrace_0
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
í
ktrace_02Đ
)__inference_dense_9_layer_call_fn_2422783˘
˛
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
annotationsŞ *
 zktrace_0

ltrace_02ë
D__inference_dense_9_layer_call_and_return_conditional_losses_2422794˘
˛
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
annotationsŞ *
 zltrace_0
!:	52dense_9/kernel
:2dense_9/bias
9:72D2'simple_rnn_12/simple_rnn_cell_14/kernel
C:ADD21simple_rnn_12/simple_rnn_cell_14/recurrent_kernel
3:1D2%simple_rnn_12/simple_rnn_cell_14/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
m0
n1
o2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B˙
.__inference_sequential_9_layer_call_fn_2421696input_10"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
Bý
.__inference_sequential_9_layer_call_fn_2422002inputs"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
Bý
.__inference_sequential_9_layer_call_fn_2422017inputs"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
B˙
.__inference_sequential_9_layer_call_fn_2421928input_10"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422135inputs"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422260inputs"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421946input_10"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421964input_10"Ŕ
ˇ˛ł
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
kwonlydefaultsŞ 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÍBĘ
%__inference_signature_wrapper_2421987input_10"
˛
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
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_simple_rnn_12_layer_call_fn_2422271inputs/0"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
/__inference_simple_rnn_12_layer_call_fn_2422282inputs/0"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
/__inference_simple_rnn_12_layer_call_fn_2422293inputs"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
/__inference_simple_rnn_12_layer_call_fn_2422304inputs"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
łB°
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422412inputs/0"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
łB°
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422520inputs/0"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
ąBŽ
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422628inputs"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
ąBŽ
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422736inputs"Ő
Ě˛Č
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
kwonlydefaultsŞ 
annotationsŞ *
 
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
ä
utrace_0
vtrace_12­
4__inference_simple_rnn_cell_14_layer_call_fn_2422808
4__inference_simple_rnn_cell_14_layer_call_fn_2422822ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 zutrace_0zvtrace_1

wtrace_0
xtrace_12ă
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422839
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422856ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 zwtrace_0zxtrace_1
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
ńBî
+__inference_dropout_7_layer_call_fn_2422741inputs"´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
 
ńBî
+__inference_dropout_7_layer_call_fn_2422746inputs"´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422751inputs"´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422763inputs"´
Ť˛§
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
kwonlydefaultsŞ 
annotationsŞ *
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
ßBÜ
+__inference_flatten_6_layer_call_fn_2422768inputs"˘
˛
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
annotationsŞ *
 
úB÷
F__inference_flatten_6_layer_call_and_return_conditional_losses_2422774inputs"˘
˛
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
annotationsŞ *
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
ÝBÚ
)__inference_dense_9_layer_call_fn_2422783inputs"˘
˛
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
annotationsŞ *
 
řBő
D__inference_dense_9_layer_call_and_return_conditional_losses_2422794inputs"˘
˛
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
annotationsŞ *
 
N
y	variables
z	keras_api
	{total
	|count"
_tf_keras_metric
`
}	variables
~	keras_api
	total

count

_fn_kwargs"
_tf_keras_metric

	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives"
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
B
4__inference_simple_rnn_cell_14_layer_call_fn_2422808inputsstates/0"ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 
B
4__inference_simple_rnn_cell_14_layer_call_fn_2422822inputsstates/0"ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 
ŠBŚ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422839inputsstates/0"ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 
ŠBŚ
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422856inputsstates/0"ž
ľ˛ą
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
kwonlydefaultsŞ 
annotationsŞ *
 
.
{0
|1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
/
0
1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
.
	variables"
_generic_user_object
:Č (2true_positives
:Č (2true_negatives
 :Č (2false_positives
 :Č (2false_negatives
&:$	52Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
>:<2D2.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/m
H:FDD28Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/m
8:6D2,Adam/simple_rnn_12/simple_rnn_cell_14/bias/m
&:$	52Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
>:<2D2.Adam/simple_rnn_12/simple_rnn_cell_14/kernel/v
H:FDD28Adam/simple_rnn_12/simple_rnn_cell_14/recurrent_kernel/v
8:6D2,Adam/simple_rnn_12/simple_rnn_cell_14/bias/v
"__inference__wrapped_model_2421236q+-,)*5˘2
+˘(
&#
input_10˙˙˙˙˙˙˙˙˙d2
Ş "1Ş.
,
dense_9!
dense_9˙˙˙˙˙˙˙˙˙Ľ
D__inference_dense_9_layer_call_and_return_conditional_losses_2422794])*0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙5
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
)__inference_dense_9_layer_call_fn_2422783P)*0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙5
Ş "˙˙˙˙˙˙˙˙˙Ž
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422751d7˘4
-˘*
$!
inputs˙˙˙˙˙˙˙˙˙dD
p 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙dD
 Ž
F__inference_dropout_7_layer_call_and_return_conditional_losses_2422763d7˘4
-˘*
$!
inputs˙˙˙˙˙˙˙˙˙dD
p
Ş ")˘&

0˙˙˙˙˙˙˙˙˙dD
 
+__inference_dropout_7_layer_call_fn_2422741W7˘4
-˘*
$!
inputs˙˙˙˙˙˙˙˙˙dD
p 
Ş "˙˙˙˙˙˙˙˙˙dD
+__inference_dropout_7_layer_call_fn_2422746W7˘4
-˘*
$!
inputs˙˙˙˙˙˙˙˙˙dD
p
Ş "˙˙˙˙˙˙˙˙˙dD§
F__inference_flatten_6_layer_call_and_return_conditional_losses_2422774]3˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙dD
Ş "&˘#

0˙˙˙˙˙˙˙˙˙5
 
+__inference_flatten_6_layer_call_fn_2422768P3˘0
)˘&
$!
inputs˙˙˙˙˙˙˙˙˙dD
Ş "˙˙˙˙˙˙˙˙˙5ş
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421946m+-,)*=˘:
3˘0
&#
input_10˙˙˙˙˙˙˙˙˙d2
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ş
I__inference_sequential_9_layer_call_and_return_conditional_losses_2421964m+-,)*=˘:
3˘0
&#
input_10˙˙˙˙˙˙˙˙˙d2
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ¸
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422135k+-,)*;˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙d2
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ¸
I__inference_sequential_9_layer_call_and_return_conditional_losses_2422260k+-,)*;˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙d2
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
.__inference_sequential_9_layer_call_fn_2421696`+-,)*=˘:
3˘0
&#
input_10˙˙˙˙˙˙˙˙˙d2
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_9_layer_call_fn_2421928`+-,)*=˘:
3˘0
&#
input_10˙˙˙˙˙˙˙˙˙d2
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_9_layer_call_fn_2422002^+-,)*;˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙d2
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_9_layer_call_fn_2422017^+-,)*;˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙d2
p

 
Ş "˙˙˙˙˙˙˙˙˙Ś
%__inference_signature_wrapper_2421987}+-,)*A˘>
˘ 
7Ş4
2
input_10&#
input_10˙˙˙˙˙˙˙˙˙d2"1Ş.
,
dense_9!
dense_9˙˙˙˙˙˙˙˙˙Ů
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422412+-,O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
 Ů
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422520+-,O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
 ż
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422628q+-,?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d2

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙dD
 ż
J__inference_simple_rnn_12_layer_call_and_return_conditional_losses_2422736q+-,?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d2

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙dD
 °
/__inference_simple_rnn_12_layer_call_fn_2422271}+-,O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D°
/__inference_simple_rnn_12_layer_call_fn_2422282}+-,O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
/__inference_simple_rnn_12_layer_call_fn_2422293d+-,?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙dD
/__inference_simple_rnn_12_layer_call_fn_2422304d+-,?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dD
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422839ˇ+-,\˘Y
R˘O
 
inputs˙˙˙˙˙˙˙˙˙2
'˘$
"
states/0˙˙˙˙˙˙˙˙˙D
p 
Ş "R˘O
H˘E

0/0˙˙˙˙˙˙˙˙˙D
$!

0/1/0˙˙˙˙˙˙˙˙˙D
 
O__inference_simple_rnn_cell_14_layer_call_and_return_conditional_losses_2422856ˇ+-,\˘Y
R˘O
 
inputs˙˙˙˙˙˙˙˙˙2
'˘$
"
states/0˙˙˙˙˙˙˙˙˙D
p
Ş "R˘O
H˘E

0/0˙˙˙˙˙˙˙˙˙D
$!

0/1/0˙˙˙˙˙˙˙˙˙D
 â
4__inference_simple_rnn_cell_14_layer_call_fn_2422808Š+-,\˘Y
R˘O
 
inputs˙˙˙˙˙˙˙˙˙2
'˘$
"
states/0˙˙˙˙˙˙˙˙˙D
p 
Ş "D˘A

0˙˙˙˙˙˙˙˙˙D
"

1/0˙˙˙˙˙˙˙˙˙Dâ
4__inference_simple_rnn_cell_14_layer_call_fn_2422822Š+-,\˘Y
R˘O
 
inputs˙˙˙˙˙˙˙˙˙2
'˘$
"
states/0˙˙˙˙˙˙˙˙˙D
p
Ş "D˘A

0˙˙˙˙˙˙˙˙˙D
"

1/0˙˙˙˙˙˙˙˙˙D