εΒ)
αΆ
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
₯
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
Α
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
χ
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
output_handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018αα'

Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/gru/gru_cell/bias/v

,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	*
dtype0
₯
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v

8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v*
_output_shapes
:	.*
dtype0

Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*+
shared_nameAdam/gru/gru_cell/kernel/v

.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	2*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ψ#*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	ψ#*
dtype0

Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/gru/gru_cell/bias/m

,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	*
dtype0
₯
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m

8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m*
_output_shapes
:	.*
dtype0

Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*+
shared_nameAdam/gru/gru_cell/kernel/m

.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	2*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ψ#*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	ψ#*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Θ*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Θ*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Θ*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Θ*
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

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	*
dtype0

gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*.
shared_namegru/gru_cell/recurrent_kernel

1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel*
_output_shapes
:	.*
dtype0

gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ψ#*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	ψ#*
dtype0

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Β2*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
Β2*
dtype0

NoOpNoOp
»?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*φ>
valueμ>Bι> Bβ>
Ϋ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
Α
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
₯
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator* 

&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
¦
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
.
0
41
52
63
24
35*
'
40
51
62
23
34*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
<trace_0
=trace_1
>trace_2
?trace_3* 
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
* 
¨
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_rate2m3m4m5m6m2v3v4v5v6v*

Iserving_default* 

0*
* 
* 

Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

40
51
62*

40
51
62*
* 


Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3* 
6
[trace_0
\trace_1
]trace_2
^trace_3* 
* 
Σ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_random_generator

4kernel
5recurrent_kernel
6bias*
* 
* 
* 
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
* 
* 
* 
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

ttrace_0* 

utrace_0* 

20
31*

20
31*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

0*
'
0
1
2
3
4*

}0
~1
2*
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

0*
* 
* 
* 
* 
* 
* 
* 
* 

0*
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
40
51
62*

40
51
62*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
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
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
z
	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives*
* 
* 
* 
* 
* 

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/gru/gru_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_embedding_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
½
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingsgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_553533
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
’
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_556091
Ω
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negativesAdam/dense/kernel/mAdam/dense/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v*)
Tin"
 2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_556188ΤΣ&
κ

F__inference_sequential_layer_call_and_return_conditional_losses_552934

inputs$
embedding_552515:
Β2

gru_552894:	2

gru_552896:	.

gru_552898:	
dense_552928:	ψ#
dense_552930:
identity’dense/StatefulPartitionedCall’!embedding/StatefulPartitionedCall’gru/StatefulPartitionedCallδ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_552515*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_552514
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_552894
gru_552896
gru_552898*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_552893Ψ
dropout/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552906Ρ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????ψ#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_552914ώ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_552928dense_552930*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_552927u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¨
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs

©
F__inference_sequential_layer_call_and_return_conditional_losses_553434

inputs$
embedding_553416:
Β2

gru_553419:	2

gru_553421:	.

gru_553423:	
dense_553428:	ψ#
dense_553430:
identity’dense/StatefulPartitionedCall’dropout/StatefulPartitionedCall’!embedding/StatefulPartitionedCall’gru/StatefulPartitionedCallδ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_553416*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_552514
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_553419
gru_553421
gru_553423*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_553377θ
dropout/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552985Ω
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????ψ#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_552914ώ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_553428dense_553430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_552927u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Κ
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ό>
Ό
&__forward_gpu_gru_with_fallback_554792

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_6f0386d4-52cb-41f6-958b-fc2e2dfe7372*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_554657_554793*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
ό>
Ό
&__forward_gpu_gru_with_fallback_555168

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_4c853dd7-daba-4796-a150-a52c6906bd2e*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_555033_555169*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
=
£
__inference_standard_gru_554126

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_554037*
condR
while_cond_554036*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_7f8cf1d4-da3a-4268-bfbf-d41ee71e7564*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
δ
½
?__inference_gru_layer_call_and_return_conditional_losses_555923

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_555708m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
Σ4
―
(__inference_gpu_gru_with_fallback_551572

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_d01193be-421e-4d9b-8c68-63b5ae3caa78*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Ϋs
Ρ
"__inference__traced_restore_556188
file_prefix9
%assignvariableop_embedding_embeddings:
Β22
assignvariableop_1_dense_kernel:	ψ#+
assignvariableop_2_dense_bias:9
&assignvariableop_3_gru_gru_cell_kernel:	2C
0assignvariableop_4_gru_gru_cell_recurrent_kernel:	.7
$assignvariableop_5_gru_gru_cell_bias:	&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: 1
"assignvariableop_15_true_positives:	Θ1
"assignvariableop_16_true_negatives:	Θ2
#assignvariableop_17_false_positives:	Θ2
#assignvariableop_18_false_negatives:	Θ:
'assignvariableop_19_adam_dense_kernel_m:	ψ#3
%assignvariableop_20_adam_dense_bias_m:A
.assignvariableop_21_adam_gru_gru_cell_kernel_m:	2K
8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_m:	.?
,assignvariableop_23_adam_gru_gru_cell_bias_m:	:
'assignvariableop_24_adam_dense_kernel_v:	ψ#3
%assignvariableop_25_adam_dense_bias_v:A
.assignvariableop_26_adam_gru_gru_cell_kernel_v:	2K
8assignvariableop_27_adam_gru_gru_cell_recurrent_kernel_v:	.?
,assignvariableop_28_adam_gru_gru_cell_bias_v:	
identity_30’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9Ξ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*τ
valueκBηB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ΅
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_gru_gru_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp0assignvariableop_4_gru_gru_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp$assignvariableop_5_gru_gru_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_true_positivesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_true_negativesIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_false_positivesIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_false_negativesIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_gru_gru_cell_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_gru_gru_cell_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_gru_gru_cell_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_27AssignVariableOp8assignvariableop_27_adam_gru_gru_cell_recurrent_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_gru_gru_cell_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ν
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: Ί
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
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
λ)
Ω
F__inference_sequential_layer_call_and_return_conditional_losses_553959

inputs5
!embedding_embedding_lookup_553571:
Β23
 gru_read_readvariableop_resource:	25
"gru_read_1_readvariableop_resource:	.5
"gru_read_2_readvariableop_resource:	7
$dense_matmul_readvariableop_resource:	ψ#3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’embedding/embedding_lookup’gru/Read/ReadVariableOp’gru/Read_1/ReadVariableOp’gru/Read_2/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????dγ
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_553571embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/553571*+
_output_shapes
:?????????d2*
dtype0ΐ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/553571*+
_output_shapes
:?????????d2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2g
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????.y
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	2*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.}
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0g
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ζ
gru/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_553734p
dropout/IdentityIdentitygru/PartitionedCall:output:1*
T0*+
_output_shapes
:?????????d.^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????ψ  
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????ψ#
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	ψ#*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ς
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
₯
²
F__inference_sequential_layer_call_and_return_conditional_losses_553508
embedding_input$
embedding_553490:
Β2

gru_553493:	2

gru_553495:	.

gru_553497:	
dense_553502:	ψ#
dense_553504:
identity’dense/StatefulPartitionedCall’dropout/StatefulPartitionedCall’!embedding/StatefulPartitionedCall’gru/StatefulPartitionedCallν
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_553490*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_552514
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_553493
gru_553495
gru_553497*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_553377θ
dropout/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552985Ω
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????ψ#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_552914ώ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_553502dense_553504*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_552927u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Κ
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input


σ
A__inference_dense_layer_call_and_return_conditional_losses_552927

inputs1
matmul_readvariableop_resource:	ψ#-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ψ#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????ψ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????ψ#
 
_user_specified_nameinputs

Ώ
?__inference_gru_layer_call_and_return_conditional_losses_554795
inputs_0/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:?????????.:??????????????????.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_554580v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :??????????????????.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
Ξ>
Ό
&__forward_gpu_gru_with_fallback_555920

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_46a7d08e-109a-4913-8d55-2ae221b17480*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_555785_555921*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_553239_553375
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_85b8747c-8960-44a7-a73c-530fc827f11f*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_553374*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Μ,
β
while_body_553645
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
Ν=
£
__inference_standard_gru_551886

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
 :??????????????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_551797*
condR
while_cond_551796*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_c486102e-83bf-4485-a214-7e750afb3a6d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Μ,
β
while_body_552184
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
ϋ
΅
$__inference_gru_layer_call_fn_554408

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_552893s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
5
―
(__inference_gpu_gru_with_fallback_554656

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
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_6f0386d4-52cb-41f6-958b-fc2e2dfe7372*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
€1
Ω
F__inference_sequential_layer_call_and_return_conditional_losses_554358

inputs5
!embedding_embedding_lookup_553963:
Β23
 gru_read_readvariableop_resource:	25
"gru_read_1_readvariableop_resource:	.5
"gru_read_2_readvariableop_resource:	7
$dense_matmul_readvariableop_resource:	ψ#3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’embedding/embedding_lookup’gru/Read/ReadVariableOp’gru/Read_1/ReadVariableOp’gru/Read_2/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????dγ
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_553963embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/553963*+
_output_shapes
:?????????d2*
dtype0ΐ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/553963*+
_output_shapes
:?????????d2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2g
	gru/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????.y
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	2*
dtype0c
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2}
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0g
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.}
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0g
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ζ
gru/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_554126Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout/dropout/MulMulgru/PartitionedCall:output:1dropout/dropout/Const:output:0*
T0*+
_output_shapes
:?????????d.a
dropout/dropout/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
: 
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????d.*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Β
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d.
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d.
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d.^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????ψ  
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????ψ#
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	ψ#*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ς
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs

½
?__inference_gru_layer_call_and_return_conditional_losses_552101

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:?????????.:??????????????????.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_551886v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :??????????????????.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs

½
?__inference_gru_layer_call_and_return_conditional_losses_552488

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:?????????.:??????????????????.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_552273v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :??????????????????.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
Μ,
β
while_body_555619
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_554203_554339
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_7f8cf1d4-da3a-4268-bfbf-d41ee71e7564*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_554338*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Μ,
β
while_body_554867
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
₯
D
(__inference_flatten_layer_call_fn_555955

inputs
identity―
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????ψ#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_552914a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????ψ#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
	
ή
while_cond_552588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_552588___redundant_placeholder04
0while_while_cond_552588___redundant_placeholder14
0while_while_cond_552588___redundant_placeholder24
0while_while_cond_552588___redundant_placeholder34
0while_while_cond_552588___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
­
ζ

:__inference___backward_gpu_gru_with_fallback_551963_552099
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
:?????????.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ͺ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:ΐ
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:π
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_construction_contextkEagerRuntime*₯
_input_shapes
:?????????.:??????????????????.:?????????.: :??????????????????.::?????????.: ::??????????????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_c486102e-83bf-4485-a214-7e750afb3a6d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_552098*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.::6
4
_output_shapes"
 :??????????????????.:-)
'
_output_shapes
:?????????.:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Μ,
β
while_body_551797
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
	
ή
while_cond_553072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_553072___redundant_placeholder04
0while_while_cond_553072___redundant_placeholder14
0while_while_cond_553072___redundant_placeholder24
0while_while_cond_553072___redundant_placeholder34
0while_while_cond_553072___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
=
£
__inference_standard_gru_555708

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_555619*
condR
while_cond_555618*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_46a7d08e-109a-4913-8d55-2ae221b17480*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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


σ
A__inference_dense_layer_call_and_return_conditional_losses_555981

inputs1
matmul_readvariableop_resource:	ψ#-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ψ#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????ψ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????ψ#
 
_user_specified_nameinputs
Μ,
β
while_body_555243
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
Ν=
£
__inference_standard_gru_554956

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
 :??????????????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_554867*
condR
while_cond_554866*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_4c853dd7-daba-4796-a150-a52c6906bd2e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
=
£
__inference_standard_gru_553734

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_553645*
condR
while_cond_553644*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_3d358b47-c34f-4935-916a-c03679eacf25*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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

Ώ
?__inference_gru_layer_call_and_return_conditional_losses_555171
inputs_0/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:?????????.:??????????????????.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_554956v

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :??????????????????.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
=
£
__inference_standard_gru_552678

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_552589*
condR
while_cond_552588*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_a076810e-ea5a-42cd-8086-9861fd97249e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Σ4
―
(__inference_gpu_gru_with_fallback_553810

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_3d358b47-c34f-4935-916a-c03679eacf25*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
	
ή
while_cond_552183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_552183___redundant_placeholder04
0while_while_cond_552183___redundant_placeholder14
0while_while_cond_552183___redundant_placeholder24
0while_while_cond_552183___redundant_placeholder34
0while_while_cond_552183___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
Μ,
β
while_body_552589
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
ό>
Ό
&__forward_gpu_gru_with_fallback_552098

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_c486102e-83bf-4485-a214-7e750afb3a6d*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_551963_552099*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
5
―
(__inference_gpu_gru_with_fallback_551962

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
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_c486102e-83bf-4485-a214-7e750afb3a6d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_555785_555921
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_46a7d08e-109a-4913-8d55-2ae221b17480*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_555920*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
ύ
a
(__inference_dropout_layer_call_fn_555933

inputs
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552985s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs


F__inference_sequential_layer_call_and_return_conditional_losses_553487
embedding_input$
embedding_553469:
Β2

gru_553472:	2

gru_553474:	.

gru_553476:	
dense_553481:	ψ#
dense_553483:
identity’dense/StatefulPartitionedCall’!embedding/StatefulPartitionedCall’gru/StatefulPartitionedCallν
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_553469*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_552514
gru/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
gru_553472
gru_553474
gru_553476*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_552893Ψ
dropout/PartitionedCallPartitionedCall$gru/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552906Ρ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????ψ#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_552914ώ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_553481dense_553483*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_552927u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????¨
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input
Ξ>
Ό
&__forward_gpu_gru_with_fallback_552890

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_a076810e-ea5a-42cd-8086-9861fd97249e*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_552755_552891*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
=
£
__inference_standard_gru_551496

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_551407*
condR
while_cond_551406*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_d01193be-421e-4d9b-8c68-63b5ae3caa78*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_555409_555545
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_8875bf6a-cb6c-4ce3-90b0-9fa691145ff5*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_555544*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Μ,
β
while_body_554491
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
	
ή
while_cond_554866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_554866___redundant_placeholder04
0while_while_cond_554866___redundant_placeholder14
0while_while_cond_554866___redundant_placeholder24
0while_while_cond_554866___redundant_placeholder34
0while_while_cond_554866___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
½
_
C__inference_flatten_layer_call_and_return_conditional_losses_552914

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????ψ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????ψ#Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????ψ#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
ζ
a
C__inference_dropout_layer_call_and_return_conditional_losses_552906

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????d._

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????d."!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
5
―
(__inference_gpu_gru_with_fallback_555032

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
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_4c853dd7-daba-4796-a150-a52c6906bd2e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Ξ>
Ό
&__forward_gpu_gru_with_fallback_551708

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_d01193be-421e-4d9b-8c68-63b5ae3caa78*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_551573_551709*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
	

+__inference_sequential_layer_call_fn_553466
embedding_input
unknown:
Β2
	unknown_0:	2
	unknown_1:	.
	unknown_2:	
	unknown_3:	ψ#
	unknown_4:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_553434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input
=
£
__inference_standard_gru_553162

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_553073*
condR
while_cond_553072*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_85b8747c-8960-44a7-a73c-530fc827f11f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_551573_551709
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_d01193be-421e-4d9b-8c68-63b5ae3caa78*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_551708*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Ξ>
Ό
&__forward_gpu_gru_with_fallback_555544

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_8875bf6a-cb6c-4ce3-90b0-9fa691145ff5*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_555409_555545*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Ψ>

__inference__traced_save_556091
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop(
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
*savev2_false_negatives_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
: Λ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*τ
valueκBηB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH©
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	
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

identity_1Identity_1:output:0*ι
_input_shapesΧ
Τ: :
Β2:	ψ#::	2:	.:	: : : : : : : : : :Θ:Θ:Θ:Θ:	ψ#::	2:	.:	:	ψ#::	2:	.:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Β2:%!

_output_shapes
:	ψ#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:
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
: :

_output_shapes
: :!

_output_shapes	
:Θ:!

_output_shapes	
:Θ:!

_output_shapes	
:Θ:!

_output_shapes	
:Θ:%!

_output_shapes
:	ψ#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:%!

_output_shapes
:	ψ#: 

_output_shapes
::%!

_output_shapes
:	2:%!

_output_shapes
:	.:%!

_output_shapes
:	:

_output_shapes
: 
ζ
a
C__inference_dropout_layer_call_and_return_conditional_losses_555938

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????d._

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????d."!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs


b
C__inference_dropout_layer_call_and_return_conditional_losses_555950

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
:?????????d.C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????d.*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ͺ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d.s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d.m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d.]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
ό>
Ό
&__forward_gpu_gru_with_fallback_552485

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_5becceb6-e2d8-46f7-bd27-32c349057063*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_552350_552486*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Ξ>
Ό
&__forward_gpu_gru_with_fallback_554338

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_7f8cf1d4-da3a-4268-bfbf-d41ee71e7564*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_554203_554339*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
δ
½
?__inference_gru_layer_call_and_return_conditional_losses_555547

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_555332m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
ό

+__inference_sequential_layer_call_fn_553550

inputs
unknown:
Β2
	unknown_0:	2
	unknown_1:	.
	unknown_2:	
	unknown_3:	ψ#
	unknown_4:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_552934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
¦

*__inference_embedding_layer_call_fn_554365

inputs
unknown:
Β2
identity’StatefulPartitionedCallΡ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_552514s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
½
_
C__inference_flatten_layer_call_and_return_conditional_losses_555961

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????ψ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????ψ#Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????ψ#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
Μ,
β
while_body_554037
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
­
ζ

:__inference___backward_gpu_gru_with_fallback_552350_552486
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
:?????????.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ͺ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:ΐ
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:π
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_construction_contextkEagerRuntime*₯
_input_shapes
:?????????.:??????????????????.:?????????.: :??????????????????.::?????????.: ::??????????????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_5becceb6-e2d8-46f7-bd27-32c349057063*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_552485*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.::6
4
_output_shapes"
 :??????????????????.:-)
'
_output_shapes
:?????????.:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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


b
C__inference_dropout_layer_call_and_return_conditional_losses_552985

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
:?????????d.C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????d.*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>ͺ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d.s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d.m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d.]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
Σ4
―
(__inference_gpu_gru_with_fallback_552754

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_a076810e-ea5a-42cd-8086-9861fd97249e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
­
ζ

:__inference___backward_gpu_gru_with_fallback_554657_554793
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
:?????????.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ͺ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:ΐ
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:π
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_construction_contextkEagerRuntime*₯
_input_shapes
:?????????.:??????????????????.:?????????.: :??????????????????.::?????????.: ::??????????????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_6f0386d4-52cb-41f6-958b-fc2e2dfe7372*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_554792*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.::6
4
_output_shapes"
 :??????????????????.:-)
'
_output_shapes
:?????????.:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Σ4
―
(__inference_gpu_gru_with_fallback_553238

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_85b8747c-8960-44a7-a73c-530fc827f11f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
ύ1
Α
!__inference__wrapped_model_551721
embedding_input@
,sequential_embedding_embedding_lookup_551333:
Β2>
+sequential_gru_read_readvariableop_resource:	2@
-sequential_gru_read_1_readvariableop_resource:	.@
-sequential_gru_read_2_readvariableop_resource:	B
/sequential_dense_matmul_readvariableop_resource:	ψ#>
0sequential_dense_biasadd_readvariableop_resource:
identity’'sequential/dense/BiasAdd/ReadVariableOp’&sequential/dense/MatMul/ReadVariableOp’%sequential/embedding/embedding_lookup’"sequential/gru/Read/ReadVariableOp’$sequential/gru/Read_1/ReadVariableOp’$sequential/gru/Read_2/ReadVariableOps
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:?????????d
%sequential/embedding/embedding_lookupResourceGather,sequential_embedding_embedding_lookup_551333sequential/embedding/Cast:y:0*
Tindices0*?
_class5
31loc:@sequential/embedding/embedding_lookup/551333*+
_output_shapes
:?????????d2*
dtype0α
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@sequential/embedding/embedding_lookup/551333*+
_output_shapes
:?????????d2«
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2}
sequential/gru/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:l
"sequential/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential/gru/strided_sliceStridedSlicesequential/gru/Shape:output:0+sequential/gru/strided_slice/stack:output:0-sequential/gru/strided_slice/stack_1:output:0-sequential/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :. 
sequential/gru/zeros/packedPack%sequential/gru/strided_slice:output:0&sequential/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
sequential/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/gru/zerosFill$sequential/gru/zeros/packed:output:0#sequential/gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????.
"sequential/gru/Read/ReadVariableOpReadVariableOp+sequential_gru_read_readvariableop_resource*
_output_shapes
:	2*
dtype0y
sequential/gru/IdentityIdentity*sequential/gru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
$sequential/gru/Read_1/ReadVariableOpReadVariableOp-sequential_gru_read_1_readvariableop_resource*
_output_shapes
:	.*
dtype0}
sequential/gru/Identity_1Identity,sequential/gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	.
$sequential/gru/Read_2/ReadVariableOpReadVariableOp-sequential_gru_read_2_readvariableop_resource*
_output_shapes
:	*
dtype0}
sequential/gru/Identity_2Identity,sequential/gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	
sequential/gru/PartitionedCallPartitionedCall9sequential/embedding/embedding_lookup/Identity_1:output:0sequential/gru/zeros:output:0 sequential/gru/Identity:output:0"sequential/gru/Identity_1:output:0"sequential/gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_551496
sequential/dropout/IdentityIdentity'sequential/gru/PartitionedCall:output:1*
T0*+
_output_shapes
:?????????d.i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????ψ  ‘
sequential/flatten/ReshapeReshape$sequential/dropout/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:?????????ψ#
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	ψ#*
dtype0¨
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitysequential/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????΄
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup#^sequential/gru/Read/ReadVariableOp%^sequential/gru/Read_1/ReadVariableOp%^sequential/gru/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2H
"sequential/gru/Read/ReadVariableOp"sequential/gru/Read/ReadVariableOp2L
$sequential/gru/Read_1/ReadVariableOp$sequential/gru/Read_1/ReadVariableOp2L
$sequential/gru/Read_2/ReadVariableOp$sequential/gru/Read_2/ReadVariableOp:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input
	
ή
while_cond_555618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_555618___redundant_placeholder04
0while_while_cond_555618___redundant_placeholder14
0while_while_cond_555618___redundant_placeholder24
0while_while_cond_555618___redundant_placeholder34
0while_while_cond_555618___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
Σ4
―
(__inference_gpu_gru_with_fallback_554202

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_7f8cf1d4-da3a-4268-bfbf-d41ee71e7564*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Σ4
―
(__inference_gpu_gru_with_fallback_555784

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_46a7d08e-109a-4913-8d55-2ae221b17480*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Σ4
―
(__inference_gpu_gru_with_fallback_555408

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
:d?????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Κ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_8875bf6a-cb6c-4ce3-90b0-9fa691145ff5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Μ,
β
while_body_551407
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
δ
½
?__inference_gru_layer_call_and_return_conditional_losses_552893

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_552678m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
ϋ
΅
$__inference_gru_layer_call_fn_554419

inputs
unknown:	2
	unknown_0:	.
	unknown_1:	
identity’StatefulPartitionedCallε
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_553377s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
Ν=
£
__inference_standard_gru_554580

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
 :??????????????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_554491*
condR
while_cond_554490*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_6f0386d4-52cb-41f6-958b-fc2e2dfe7372*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
=
£
__inference_standard_gru_555332

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
:d?????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_555243*
condR
while_cond_555242*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:d?????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????d.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_8875bf6a-cb6c-4ce3-90b0-9fa691145ff5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
δ
½
?__inference_gru_layer_call_and_return_conditional_losses_553377

inputs/
read_readvariableop_resource:	21
read_1_readvariableop_resource:	.1
read_2_readvariableop_resource:	

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
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
valueB:Ρ
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
:?????????.q
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
:	
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?????????.:?????????d.:?????????.: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_gru_553162m

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????d.
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs
	
ή
while_cond_551406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_551406___redundant_placeholder04
0while_while_cond_551406___redundant_placeholder14
0while_while_cond_551406___redundant_placeholder24
0while_while_cond_551406___redundant_placeholder34
0while_while_cond_551406___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
Μ,
β
while_body_553073
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
valueB"????2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:?????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :΅
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:?????????Y
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:?????????.Y
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:?????????.t
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:?????????.]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:?????????.o
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:?????????.k
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:?????????.U

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:?????????.l
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????.P
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:?????????.c
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????.h
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:?????????.Έ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
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
:?????????."4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: : : : :?????????.: : :	2::	.:: 
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
:?????????.:
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
Ξ>
Ό
&__forward_gpu_gru_with_fallback_553946

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_3d358b47-c34f-4935-916a-c03679eacf25*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_553811_553947*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
	
ή
while_cond_554036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_554036___redundant_placeholder04
0while_while_cond_554036___redundant_placeholder14
0while_while_cond_554036___redundant_placeholder24
0while_while_cond_554036___redundant_placeholder34
0while_while_cond_554036___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
«
D
(__inference_dropout_layer_call_fn_555928

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_552906d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????d."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d.:S O
+
_output_shapes
:?????????d.
 
_user_specified_nameinputs
	

+__inference_sequential_layer_call_fn_552949
embedding_input
unknown:
Β2
	unknown_0:	2
	unknown_1:	.
	unknown_2:	
	unknown_3:	ψ#
	unknown_4:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_552934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input
	
ή
while_cond_553644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_553644___redundant_placeholder04
0while_while_cond_553644___redundant_placeholder14
0while_while_cond_553644___redundant_placeholder24
0while_while_cond_553644___redundant_placeholder34
0while_while_cond_553644___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
	
ή
while_cond_555242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_555242___redundant_placeholder04
0while_while_cond_555242___redundant_placeholder14
0while_while_cond_555242___redundant_placeholder24
0while_while_cond_555242___redundant_placeholder34
0while_while_cond_555242___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
ό

+__inference_sequential_layer_call_fn_553567

inputs
unknown:
Β2
	unknown_0:	2
	unknown_1:	.
	unknown_2:	
	unknown_3:	ψ#
	unknown_4:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_553434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_553811_553947
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_3d358b47-c34f-4935-916a-c03679eacf25*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_553946*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
Ξ>
Ό
&__forward_gpu_gru_with_fallback_553374

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
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : ―
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Ξ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d?????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*+
_output_shapes
:?????????d.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.]

Identity_1Identitytranspose_7:y:0*
T0*+
_output_shapes
:?????????d.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
K:?????????d2:?????????.:	2:	.:	*<
api_implements*(gru_85b8747c-8960-44a7-a73c-530fc827f11f*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_553239_553375*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????d2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Έ
ζ

:__inference___backward_gpu_gru_with_fallback_552755_552891
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
:?????????.d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????d.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:‘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:d?????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:d?????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.ω
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:d?????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:η
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*K
_output_shapes9
7:d?????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????d2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????d2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_input_shapesψ
υ:?????????.:?????????d.:?????????.: :d?????????.::?????????.: ::d?????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_a076810e-ea5a-42cd-8086-9861fd97249e*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_552890*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.:1-
+
_output_shapes
:?????????d.:-)
'
_output_shapes
:?????????.:

_output_shapes
: :1-
+
_output_shapes
:d?????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
::1	-
+
_output_shapes
:d?????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
	
ή
while_cond_554490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_554490___redundant_placeholder04
0while_while_cond_554490___redundant_placeholder14
0while_while_cond_554490___redundant_placeholder24
0while_while_cond_554490___redundant_placeholder34
0while_while_cond_554490___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
£	
€
E__inference_embedding_layer_call_and_return_conditional_losses_552514

inputs+
embedding_lookup_552508:
Β2
identity’embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????d»
embedding_lookupResourceGatherembedding_lookup_552508Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/552508*+
_output_shapes
:?????????d2*
dtype0’
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/552508*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????d2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
Ν=
£
__inference_standard_gru_552273

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
 :??????????????????2B
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
valueB:Ρ
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
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
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
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:?????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:?????????.:?????????.:?????????.*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????.M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????.b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????.Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????.]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????.Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????.I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????.S
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:?????????.J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????.Q
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????.V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ΄
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :?????????.: : :	2::	.:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_552184*
condR
while_cond_552183*V
output_shapesE
C: : : : :?????????.: : :	2::	.:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????.   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????.*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
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
:?????????.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????.f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????.X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_5becceb6-e2d8-46f7-bd27-32c349057063*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
Ώ

&__inference_dense_layer_call_fn_555970

inputs
unknown:	ψ#
	unknown_0:
identity’StatefulPartitionedCallΦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_552927o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????ψ#: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????ψ#
 
_user_specified_nameinputs
λ

$__inference_signature_wrapper_553533
embedding_input
unknown:
Β2
	unknown_0:	2
	unknown_1:	.
	unknown_2:	
	unknown_3:	ψ#
	unknown_4:
identity’StatefulPartitionedCallσ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_551721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????d
)
_user_specified_nameembedding_input
₯
·
$__inference_gru_layer_call_fn_554386
inputs_0
unknown:	2
	unknown_0:	.
	unknown_1:	
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_552101|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
£	
€
E__inference_embedding_layer_call_and_return_conditional_losses_554375

inputs+
embedding_lookup_554369:
Β2
identity’embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????d»
embedding_lookupResourceGatherembedding_lookup_554369Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/554369*+
_output_shapes
:?????????d2*
dtype0’
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/554369*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????d2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
5
―
(__inference_gpu_gru_with_fallback_552349

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
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????.Q
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
?????????V
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
?????????a
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
:όa
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
:όa
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
:όa
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
:Δa
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
:Δa
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
:Δ[
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
value	B : Κ
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes	
:ΤiU
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    Σ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:??????????????????.:?????????.: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????.*
shrink_axis_maske
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :??????????????????.p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????.*
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
:?????????.f

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :??????????????????.Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????.I

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
T:??????????????????2:?????????.:	2:	.:	*<
api_implements*(gru_5becceb6-e2d8-46f7-bd27-32c349057063*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????.
 
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
₯
·
$__inference_gru_layer_call_fn_554397
inputs_0
unknown:	2
	unknown_0:	.
	unknown_1:	
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_552488|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
	
ή
while_cond_551796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_551796___redundant_placeholder04
0while_while_cond_551796___redundant_placeholder14
0while_while_cond_551796___redundant_placeholder24
0while_while_cond_551796___redundant_placeholder34
0while_while_cond_551796___redundant_placeholder4
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
1: : : : :?????????.: :::::: 
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
:?????????.:
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
­
ζ

:__inference___backward_gpu_gru_with_fallback_555033_555169
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
:?????????.m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????.`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????.O
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
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ͺ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????.*
shrink_axis_mask
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:ΐ
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????.q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:€
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????.
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????.a
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:π
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*T
_output_shapesB
@:??????????????????2:?????????.: :Τi*
rnn_modegru
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ε
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????.\
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
valueB:όh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:όh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:Δh
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:Δg
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
H::::::::::::ζ
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:όκ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:Δκ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:Δι
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:.ι
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:.μ
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:.μ
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
valueB".   2   ₯
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   2   ₯
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:.2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:..o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB".   .   ₯
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:..h
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:.h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.‘
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
valueB:.€
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:.i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:.€
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
valueB"      ’
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????.f

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
_construction_contextkEagerRuntime*₯
_input_shapes
:?????????.:??????????????????.:?????????.: :??????????????????.::?????????.: ::??????????????????2:?????????.: :Τi::?????????.: ::::::: : : *<
api_implements*(gru_4c853dd7-daba-4796-a150-a52c6906bd2e*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_555168*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????.::6
4
_output_shapes"
 :??????????????????.:-)
'
_output_shapes
:?????????.:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????.: 

_output_shapes
::1-
+
_output_shapes
:?????????.:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :??????????????????2:1
-
+
_output_shapes
:?????????.:

_output_shapes
: :!

_output_shapes	
:Τi: 

_output_shapes
::-)
'
_output_shapes
:?????????.:
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
: "ΏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Έ
serving_default€
K
embedding_input8
!serving_default_embedding_input:0?????????d9
dense0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?ΐ
υ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
΅
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Ϊ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Ό
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_random_generator"
_tf_keras_layer
₯
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
»
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
J
0
41
52
63
24
35"
trackable_list_wrapper
C
40
51
62
23
34"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
β
<trace_0
=trace_1
>trace_2
?trace_32χ
+__inference_sequential_layer_call_fn_552949
+__inference_sequential_layer_call_fn_553550
+__inference_sequential_layer_call_fn_553567
+__inference_sequential_layer_call_fn_553466ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z<trace_0z=trace_1z>trace_2z?trace_3
Ξ
@trace_0
Atrace_1
Btrace_2
Ctrace_32γ
F__inference_sequential_layer_call_and_return_conditional_losses_553959
F__inference_sequential_layer_call_and_return_conditional_losses_554358
F__inference_sequential_layer_call_and_return_conditional_losses_553487
F__inference_sequential_layer_call_and_return_conditional_losses_553508ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
ΤBΡ
!__inference__wrapped_model_551721embedding_input"
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
annotationsͺ *
 
·
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_rate2m3m4m5m6m2v3v4v5v6v"
	optimizer
,
Iserving_default"
signature_map
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ξ
Otrace_02Ρ
*__inference_embedding_layer_call_fn_554365’
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
annotationsͺ *
 zOtrace_0

Ptrace_02μ
E__inference_embedding_layer_call_and_return_conditional_losses_554375’
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
annotationsͺ *
 zPtrace_0
(:&
Β22embedding/embeddings
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ϋ
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_32π
$__inference_gru_layer_call_fn_554386
$__inference_gru_layer_call_fn_554397
$__inference_gru_layer_call_fn_554408
$__inference_gru_layer_call_fn_554419Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 zWtrace_0zXtrace_1zYtrace_2zZtrace_3
Η
[trace_0
\trace_1
]trace_2
^trace_32ά
?__inference_gru_layer_call_and_return_conditional_losses_554795
?__inference_gru_layer_call_and_return_conditional_losses_555171
?__inference_gru_layer_call_and_return_conditional_losses_555547
?__inference_gru_layer_call_and_return_conditional_losses_555923Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 z[trace_0z\trace_1z]trace_2z^trace_3
"
_generic_user_object
θ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_random_generator

4kernel
5recurrent_kernel
6bias"
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
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Β
ktrace_0
ltrace_12
(__inference_dropout_layer_call_fn_555928
(__inference_dropout_layer_call_fn_555933΄
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
kwonlydefaultsͺ 
annotationsͺ *
 zktrace_0zltrace_1
ψ
mtrace_0
ntrace_12Α
C__inference_dropout_layer_call_and_return_conditional_losses_555938
C__inference_dropout_layer_call_and_return_conditional_losses_555950΄
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
kwonlydefaultsͺ 
annotationsͺ *
 zmtrace_0zntrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
μ
ttrace_02Ο
(__inference_flatten_layer_call_fn_555955’
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
annotationsͺ *
 zttrace_0

utrace_02κ
C__inference_flatten_layer_call_and_return_conditional_losses_555961’
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
annotationsͺ *
 zutrace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
κ
{trace_02Ν
&__inference_dense_layer_call_fn_555970’
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
annotationsͺ *
 z{trace_0

|trace_02θ
A__inference_dense_layer_call_and_return_conditional_losses_555981’
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
annotationsͺ *
 z|trace_0
:	ψ#2dense/kernel
:2
dense/bias
&:$	22gru/gru_cell/kernel
0:.	.2gru/gru_cell/recurrent_kernel
$:"	2gru/gru_cell/bias
'
0"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
5
}0
~1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_sequential_layer_call_fn_552949embedding_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ύBϊ
+__inference_sequential_layer_call_fn_553550inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ύBϊ
+__inference_sequential_layer_call_fn_553567inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
+__inference_sequential_layer_call_fn_553466embedding_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_553959inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_554358inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
‘B
F__inference_sequential_layer_call_and_return_conditional_losses_553487embedding_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
‘B
F__inference_sequential_layer_call_and_return_conditional_losses_553508embedding_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ΣBΠ
$__inference_signature_wrapper_553533embedding_input"
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
annotationsͺ *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ήBΫ
*__inference_embedding_layer_call_fn_554365inputs"’
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
annotationsͺ *
 
ωBφ
E__inference_embedding_layer_call_and_return_conditional_losses_554375inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
$__inference_gru_layer_call_fn_554386inputs/0"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
$__inference_gru_layer_call_fn_554397inputs/0"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
$__inference_gru_layer_call_fn_554408inputs"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
$__inference_gru_layer_call_fn_554419inputs"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
?__inference_gru_layer_call_and_return_conditional_losses_554795inputs/0"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
?__inference_gru_layer_call_and_return_conditional_losses_555171inputs/0"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
¦B£
?__inference_gru_layer_call_and_return_conditional_losses_555547inputs"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
¦B£
?__inference_gru_layer_call_and_return_conditional_losses_555923inputs"Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
Δ2ΑΎ
΅²±
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
kwonlydefaultsͺ 
annotationsͺ *
 
Δ2ΑΎ
΅²±
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
kwonlydefaultsͺ 
annotationsͺ *
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
ξBλ
(__inference_dropout_layer_call_fn_555928inputs"΄
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
kwonlydefaultsͺ 
annotationsͺ *
 
ξBλ
(__inference_dropout_layer_call_fn_555933inputs"΄
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
C__inference_dropout_layer_call_and_return_conditional_losses_555938inputs"΄
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
C__inference_dropout_layer_call_and_return_conditional_losses_555950inputs"΄
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
kwonlydefaultsͺ 
annotationsͺ *
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
άBΩ
(__inference_flatten_layer_call_fn_555955inputs"’
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
annotationsͺ *
 
χBτ
C__inference_flatten_layer_call_and_return_conditional_losses_555961inputs"’
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
annotationsͺ *
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
ΪBΧ
&__inference_dense_layer_call_fn_555970inputs"’
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
annotationsͺ *
 
υBς
A__inference_dense_layer_call_and_return_conditional_losses_555981inputs"’
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
annotationsͺ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric

	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives"
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
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
.
	variables"
_generic_user_object
:Θ (2true_positives
:Θ (2true_negatives
 :Θ (2false_positives
 :Θ (2false_negatives
$:"	ψ#2Adam/dense/kernel/m
:2Adam/dense/bias/m
+:)	22Adam/gru/gru_cell/kernel/m
5:3	.2$Adam/gru/gru_cell/recurrent_kernel/m
):'	2Adam/gru/gru_cell/bias/m
$:"	ψ#2Adam/dense/kernel/v
:2Adam/dense/bias/v
+:)	22Adam/gru/gru_cell/kernel/v
5:3	.2$Adam/gru/gru_cell/recurrent_kernel/v
):'	2Adam/gru/gru_cell/bias/v
!__inference__wrapped_model_551721q456238’5
.’+
)&
embedding_input?????????d
ͺ "-ͺ*
(
dense
dense?????????’
A__inference_dense_layer_call_and_return_conditional_losses_555981]230’-
&’#
!
inputs?????????ψ#
ͺ "%’"

0?????????
 z
&__inference_dense_layer_call_fn_555970P230’-
&’#
!
inputs?????????ψ#
ͺ "?????????«
C__inference_dropout_layer_call_and_return_conditional_losses_555938d7’4
-’*
$!
inputs?????????d.
p 
ͺ ")’&

0?????????d.
 «
C__inference_dropout_layer_call_and_return_conditional_losses_555950d7’4
-’*
$!
inputs?????????d.
p
ͺ ")’&

0?????????d.
 
(__inference_dropout_layer_call_fn_555928W7’4
-’*
$!
inputs?????????d.
p 
ͺ "?????????d.
(__inference_dropout_layer_call_fn_555933W7’4
-’*
$!
inputs?????????d.
p
ͺ "?????????d.¨
E__inference_embedding_layer_call_and_return_conditional_losses_554375_/’,
%’"
 
inputs?????????d
ͺ ")’&

0?????????d2
 
*__inference_embedding_layer_call_fn_554365R/’,
%’"
 
inputs?????????d
ͺ "?????????d2€
C__inference_flatten_layer_call_and_return_conditional_losses_555961]3’0
)’&
$!
inputs?????????d.
ͺ "&’#

0?????????ψ#
 |
(__inference_flatten_layer_call_fn_555955P3’0
)’&
$!
inputs?????????d.
ͺ "?????????ψ#Ξ
?__inference_gru_layer_call_and_return_conditional_losses_554795456O’L
E’B
41
/,
inputs/0??????????????????2

 
p 

 
ͺ "2’/
(%
0??????????????????.
 Ξ
?__inference_gru_layer_call_and_return_conditional_losses_555171456O’L
E’B
41
/,
inputs/0??????????????????2

 
p

 
ͺ "2’/
(%
0??????????????????.
 ΄
?__inference_gru_layer_call_and_return_conditional_losses_555547q456?’<
5’2
$!
inputs?????????d2

 
p 

 
ͺ ")’&

0?????????d.
 ΄
?__inference_gru_layer_call_and_return_conditional_losses_555923q456?’<
5’2
$!
inputs?????????d2

 
p

 
ͺ ")’&

0?????????d.
 ₯
$__inference_gru_layer_call_fn_554386}456O’L
E’B
41
/,
inputs/0??????????????????2

 
p 

 
ͺ "%"??????????????????.₯
$__inference_gru_layer_call_fn_554397}456O’L
E’B
41
/,
inputs/0??????????????????2

 
p

 
ͺ "%"??????????????????.
$__inference_gru_layer_call_fn_554408d456?’<
5’2
$!
inputs?????????d2

 
p 

 
ͺ "?????????d.
$__inference_gru_layer_call_fn_554419d456?’<
5’2
$!
inputs?????????d2

 
p

 
ͺ "?????????d.»
F__inference_sequential_layer_call_and_return_conditional_losses_553487q45623@’=
6’3
)&
embedding_input?????????d
p 

 
ͺ "%’"

0?????????
 »
F__inference_sequential_layer_call_and_return_conditional_losses_553508q45623@’=
6’3
)&
embedding_input?????????d
p

 
ͺ "%’"

0?????????
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_553959h456237’4
-’*
 
inputs?????????d
p 

 
ͺ "%’"

0?????????
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_554358h456237’4
-’*
 
inputs?????????d
p

 
ͺ "%’"

0?????????
 
+__inference_sequential_layer_call_fn_552949d45623@’=
6’3
)&
embedding_input?????????d
p 

 
ͺ "?????????
+__inference_sequential_layer_call_fn_553466d45623@’=
6’3
)&
embedding_input?????????d
p

 
ͺ "?????????
+__inference_sequential_layer_call_fn_553550[456237’4
-’*
 
inputs?????????d
p 

 
ͺ "?????????
+__inference_sequential_layer_call_fn_553567[456237’4
-’*
 
inputs?????????d
p

 
ͺ "?????????­
$__inference_signature_wrapper_55353345623K’H
’ 
Aͺ>
<
embedding_input)&
embedding_input?????????d"-ͺ*
(
dense
dense?????????