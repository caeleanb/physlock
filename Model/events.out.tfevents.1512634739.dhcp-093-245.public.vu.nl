       �K"	  �\>��Abrain.Event:2�yƻr�      Ŝ�F	�1�\>��A"��

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
f
cond/SwitchSwitchIsVariableInitializedIsVariableInitialized*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
P
cond/pred_idIdentityIsVariableInitialized*
T0
*
_output_shapes
: 
{
cond/read/Switch	RefSwitchglobal_stepcond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
J
	cond/readIdentitycond/read/Switch:1*
T0	*
_output_shapes
: 
�
cond/Switch_1Switchglobal_step/Initializer/zeroscond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
Y

cond/MergeMergecond/Switch_1	cond/read*
_output_shapes
: : *
T0	*
N
G
add/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
>
addAdd
cond/Mergeadd/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
capacity�*
component_types
2			*
_output_shapes
: *
min_after_dequeue�*
shapes
: :��: *
seed2 *

seed *
	container *
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_ms���������*
Tcomponents
2			
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :�*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *>î:*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full*
_output_shapes
: 
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value	B :
*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*
component_types
2			*,
_output_shapes
:
:

��:

p
CastCast"random_shuffle_queue_DequeueMany:1^add*

DstT0*

SrcT0	* 
_output_shapes
:

��
l
Reshape/shapeConst^add*
dtype0*%
valueB"�����   Z      *
_output_shapes
:
g
ReshapeReshapeCastReshape/shape*'
_output_shapes
:
�Z*
T0*
Tshape0
�
.Name_filter/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@Name_filter*%
valueB"            *
_output_shapes
:
�
-Name_filter/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *    *
_output_shapes
: 
�
/Name_filter/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *��L=*
_output_shapes
: 
�
8Name_filter/Initializer/truncated_normal/TruncatedNormalTruncatedNormal.Name_filter/Initializer/truncated_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*
_class
loc:@Name_filter
�
,Name_filter/Initializer/truncated_normal/mulMul8Name_filter/Initializer/truncated_normal/TruncatedNormal/Name_filter/Initializer/truncated_normal/stddev*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
(Name_filter/Initializer/truncated_normalAdd,Name_filter/Initializer/truncated_normal/mul-Name_filter/Initializer/truncated_normal/mean*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Name_filter
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/AssignAssignName_filter(Name_filter/Initializer/truncated_normal*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
Name_filter/readIdentityName_filter*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Conv2DConv2DReshapeName_filter/read*'
_output_shapes
:
�Z*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
Name_biases/Initializer/ConstConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/AssignAssignName_biasesName_biases/Initializer/Const*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
n
Name_biases/readIdentityName_biases*
_class
loc:@Name_biases*
T0*
_output_shapes
:
u
BiasAddBiasAddConv2DName_biases/read*'
_output_shapes
:
�Z*
T0*
data_formatNHWC
�
*batch_normalization/gamma/Initializer/onesConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
batch_normalization/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@batch_normalization/moving_mean*
shared_name 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
4batch_normalization/moving_variance/Initializer/onesConst*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?*
_output_shapes
:
�
#batch_normalization/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*6
_class,
*(loc:@batch_normalization/moving_variance*
shared_name 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
b
batch_normalization/ConstConst^add*
dtype0*
valueB *
_output_shapes
: 
d
batch_normalization/Const_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
"batch_normalization/FusedBatchNormFusedBatchNormBiasAddbatch_normalization/gamma/readbatch_normalization/beta/readbatch_normalization/Constbatch_normalization/Const_1*
epsilon%o�:*?
_output_shapes-
+:
�Z::::*
T0*
is_training(*
data_formatNHWC
f
batch_normalization/Const_2Const^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean^add*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read$batch_normalization/FusedBatchNorm:1*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Const_2*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking( *
T0*
_output_shapes
:
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance^add*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read$batch_normalization/FusedBatchNorm:2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Const_2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking( *
T0*
_output_shapes
:
f
Reshape_1/shapeConst^add*
dtype0*
valueB"����@8  *
_output_shapes
:
�
	Reshape_1Reshape"batch_normalization/FusedBatchNormReshape_1/shape*
_output_shapes
:	
�p*
T0*
Tshape0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"@8     *
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6��*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6�<*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	�p*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/kernel
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�

dense/bias
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes
:
�
dense/MatMulMatMul	Reshape_1dense/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:

w
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
_output_shapes

:
*
T0*
data_formatNHWC
P
dense/SigmoidSigmoiddense/BiasAdd*
T0*
_output_shapes

:

F
transpose/RankRankdense/Sigmoid*
T0*
_output_shapes
: 
W
transpose/sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
T0*
_output_shapes
: 
]
transpose/Range/startConst^add*
dtype0*
value	B : *
_output_shapes
: 
]
transpose/Range/deltaConst^add*
dtype0*
value	B :*
_output_shapes
: 
~
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*

Tidx0*
_output_shapes
:
[
transpose/sub_1Subtranspose/subtranspose/Range*
T0*
_output_shapes
:
l
	transpose	Transposedense/Sigmoidtranspose/sub_1*
Tperm0*
T0*
_output_shapes

:

l
Cast_1Cast"random_shuffle_queue_DequeueMany:2^add*

DstT0*

SrcT0	*
_output_shapes
:

L
RankConst^add*
dtype0*
value	B :*
_output_shapes
: 
\
ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
N
Rank_1Const^add*
dtype0*
value	B :*
_output_shapes
: 
^
Shape_1Const^add*
dtype0*
valueB"   
   *
_output_shapes
:
M
Sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
N*
T0*
_output_shapes
:*

axis 
Z

Slice/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
h
concat/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
S
concat/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
q
concatConcatV2concat/values_0Sliceconcat/axis*
N*

Tidx0*
_output_shapes
:*
T0
^
	Reshape_2Reshape	transposeconcat*
_output_shapes

:
*
T0*
Tshape0
N
Rank_2Const^add*
dtype0*
value	B :*
_output_shapes
: 
W
Shape_2Const^add*
dtype0*
valueB:
*
_output_shapes
:
O
Sub_1/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
N*
T0*
_output_shapes
:*

axis 
\
Slice_1/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
j
concat_1/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
U
concat_1/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
y
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
]
	Reshape_3ReshapeCast_1concat_1*
_output_shapes

:
*
T0*
Tshape0
�
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_2	Reshape_3*
T0*$
_output_shapes
::

O
Sub_2/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
]
Slice_2/beginConst^add*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
N*
T0*
_output_shapes
:*

axis 
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:���������
o
	Reshape_4ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
_output_shapes
:*
T0*
Tshape0
U
ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_4Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
F
RoundRounddense/Sigmoid*
T0*
_output_shapes

:

{
$remove_squeezable_dimensions/SqueezeSqueezeRound*
squeeze_dims

���������*
T0*
_output_shapes
:

h
Cast_2Cast$remove_squeezable_dimensions/Squeeze*

DstT0	*

SrcT0*
_output_shapes
:

_
EqualEqualCast_2"random_shuffle_queue_DequeueMany:2*
T0	*
_output_shapes
:

J
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes
:

�
 accuracy/total/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/total*
valueB
 *    *
_output_shapes
: 
�
accuracy/total
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/total*
shared_name 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/count*
valueB
 *    *
_output_shapes
: 
�
accuracy/count
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/count*
shared_name 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
U
accuracy/SizeConst^add*
dtype0*
value	B :
*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
^
accuracy/ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
]
accuracy/Greater/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
l
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read^add*
T0*
_output_shapes
: 
[
accuracy/value/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
_
accuracy/Greater_1/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
_
accuracy/update_op/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
i
ExponentialDecay/learning_rateConst^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
e
ExponentialDecay/CastCastglobal_step/read^add*

DstT0*

SrcT0	*
_output_shapes
: 
b
ExponentialDecay/Cast_1/xConst^add*
dtype0*
value
B :�N*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*

SrcT0*
_output_shapes
: 
d
ExponentialDecay/Cast_2/xConst^add*
dtype0*
valueB
 *��u?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
X
gradients/ShapeConst^add*
dtype0*
valueB *
_output_shapes
: 
Z
gradients/ConstConst^add*
dtype0*
valueB
 *  �?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
q
!gradients/Mean_grad/Reshape/shapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
r
"gradients/Mean_grad/Tile/multiplesConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:
i
gradients/Mean_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
d
gradients/Mean_grad/Shape_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
gradients/Mean_grad/ConstConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_grad/Const_1Const^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_grad/Maximum/yConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
n
gradients/Reshape_4_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
 gradients/Reshape_4_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_4_grad/Shape*
_output_shapes
:*
T0*
Tshape0
k
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

�
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst^add*
dtype0*
valueB :
���������*
_output_shapes
: 
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_4_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

u
gradients/Reshape_2_grad/ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
�
 gradients/Reshape_2_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_2_grad/Shape*
_output_shapes

:
*
T0*
Tshape0
u
*gradients/transpose_grad/InvertPermutationInvertPermutationtranspose/sub_1*
T0*
_output_shapes
:
�
"gradients/transpose_grad/transpose	Transpose gradients/Reshape_2_grad/Reshape*gradients/transpose_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes

:

�
(gradients/dense/Sigmoid_grad/SigmoidGradSigmoidGraddense/Sigmoid"gradients/transpose_grad/transpose*
T0*
_output_shapes

:

�
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dense/Sigmoid_grad/SigmoidGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp^add)^gradients/dense/Sigmoid_grad/SigmoidGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
�
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dense/Sigmoid_grad/SigmoidGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes

:

�
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	
�p
�
$gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_15gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�p
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp^add#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*
T0*
_output_shapes
:	
�p
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�p
}
gradients/Reshape_1_grad/ShapeConst^add*
dtype0*%
valueB"
   �   Z      *
_output_shapes
:
�
 gradients/Reshape_1_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*'
_output_shapes
:
�Z*
T0*
Tshape0
n
gradients/zeros_like_1	ZerosLike$batch_normalization/FusedBatchNorm:1*
T0*
_output_shapes
:
n
gradients/zeros_like_2	ZerosLike$batch_normalization/FusedBatchNorm:2*
T0*
_output_shapes
:
n
gradients/zeros_like_3	ZerosLike$batch_normalization/FusedBatchNorm:3*
T0*
_output_shapes
:
n
gradients/zeros_like_4	ZerosLike$batch_normalization/FusedBatchNorm:4*
T0*
_output_shapes
:
�
Dgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad gradients/Reshape_1_grad/ReshapeBiasAddbatch_normalization/gamma/read$batch_normalization/FusedBatchNorm:3$batch_normalization/FusedBatchNorm:4*
epsilon%o�:*;
_output_shapes)
':
�Z::: : *
T0*
is_training(*
data_formatNHWC
�
Bgradients/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOp^addE^gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
�
Jgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityDgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradC^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_3IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:3C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_4IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:4C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
_output_shapes
:*
T0*
data_formatNHWC
�
'gradients/BiasAdd_grad/tuple/group_depsNoOp^addK^gradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency#^gradients/BiasAdd_grad/BiasAddGrad
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentityJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency(^gradients/BiasAdd_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
gradients/Conv2D_grad/ShapeNShapeNReshapeName_filter/read*
out_type0*
T0* 
_output_shapes
::*
N
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNName_filter/read/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
&gradients/Conv2D_grad/tuple/group_depsNoOp^add*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
�Z
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
�
&Name_filter/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_filter*%
valueB*    *&
_output_shapes
:
�
Name_filter/Momentum
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/Momentum/AssignAssignName_filter/Momentum&Name_filter/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
�
Name_filter/Momentum/readIdentityName_filter/Momentum*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
&Name_biases/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/Momentum/AssignAssignName_biases/Momentum&Name_biases/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
�
Name_biases/Momentum/readIdentityName_biases/Momentum*
_class
loc:@Name_biases*
T0*
_output_shapes
:
�
4batch_normalization/gamma/Momentum/Initializer/zerosConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*    *
_output_shapes
:
�
"batch_normalization/gamma/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
)batch_normalization/gamma/Momentum/AssignAssign"batch_normalization/gamma/Momentum4batch_normalization/gamma/Momentum/Initializer/zeros*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
'batch_normalization/gamma/Momentum/readIdentity"batch_normalization/gamma/Momentum*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
3batch_normalization/beta/Momentum/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
!batch_normalization/beta/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
(batch_normalization/beta/Momentum/AssignAssign!batch_normalization/beta/Momentum3batch_normalization/beta/Momentum/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
&batch_normalization/beta/Momentum/readIdentity!batch_normalization/beta/Momentum*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
'dense/kernel/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/kernel*
valueB	�p*    *
_output_shapes
:	�p
�
dense/kernel/Momentum
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/Momentum/AssignAssigndense/kernel/Momentum'dense/kernel/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
�
dense/kernel/Momentum/readIdentitydense/kernel/Momentum*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
%dense/bias/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�
dense/bias/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/Momentum/AssignAssigndense/bias/Momentum%dense/bias/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
}
dense/bias/Momentum/readIdentitydense/bias/Momentum*
_class
loc:@dense/bias*
T0*
_output_shapes
:
\
Momentum/momentumConst^add*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
)Momentum/update_Name_filter/ApplyMomentumApplyMomentumName_filterName_filter/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_filter*
use_locking( *
T0*&
_output_shapes
:
�
)Momentum/update_Name_biases/ApplyMomentumApplyMomentumName_biasesName_biases/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_biases*
use_locking( *
T0*
_output_shapes
:
�
7Momentum/update_batch_normalization/gamma/ApplyMomentumApplyMomentumbatch_normalization/gamma"batch_normalization/gamma/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *,
_class"
 loc:@batch_normalization/gamma*
use_locking( *
T0*
_output_shapes
:
�
6Momentum/update_batch_normalization/beta/ApplyMomentumApplyMomentumbatch_normalization/beta!batch_normalization/beta/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Momentum/momentum*
use_nesterov( *+
_class!
loc:@batch_normalization/beta*
use_locking( *
T0*
_output_shapes
:
�
*Momentum/update_dense/kernel/ApplyMomentumApplyMomentumdense/kerneldense/kernel/MomentumExponentialDecay6gradients/dense/MatMul_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/kernel*
use_locking( *
T0*
_output_shapes
:	�p
�
(Momentum/update_dense/bias/ApplyMomentumApplyMomentum
dense/biasdense/bias/MomentumExponentialDecay7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes
:
�
Momentum/updateNoOp^add*^Momentum/update_Name_filter/ApplyMomentum*^Momentum/update_Name_biases/ApplyMomentum8^Momentum/update_batch_normalization/gamma/ApplyMomentum7^Momentum/update_batch_normalization/beta/ApplyMomentum+^Momentum/update_dense/kernel/ApplyMomentum)^Momentum/update_dense/bias/ApplyMomentum
�
Momentum/valueConst^add^Momentum/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
�
Momentum	AssignAddglobal_stepMomentum/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: "�%�K�      e�B	�D�\>��AJ��
�1�1
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyMomentum
var"T�
accum"T�
lr"T	
grad"T
momentum"T
out"T�"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
p
	AssignSub
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
�
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
5
Pow
x"T
y"T
z"T"
Ttype:
	2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( �
�
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint����������
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
&
QueueSizeV2

handle
size�
�
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring �
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
/
Round
x"T
y"T"
Ttype:
	2	
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
/
Sigmoid
x"T
y"T"
Ttype:	
2
<
SigmoidGrad
y"T
dy"T
z"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
9
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.4.02v1.4.0-rc1-11-g130a514��

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
f
cond/SwitchSwitchIsVariableInitializedIsVariableInitialized*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
P
cond/pred_idIdentityIsVariableInitialized*
T0
*
_output_shapes
: 
{
cond/read/Switch	RefSwitchglobal_stepcond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
J
	cond/readIdentitycond/read/Switch:1*
T0	*
_output_shapes
: 
�
cond/Switch_1Switchglobal_step/Initializer/zeroscond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
Y

cond/MergeMergecond/Switch_1	cond/read*
N*
T0	*
_output_shapes
: : 
G
add/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
>
addAdd
cond/Mergeadd/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
	container *
component_types
2			*
_output_shapes
: *
min_after_dequeue�*
shapes
: :��: *
seed2 *

seed *
capacity�*
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_ms���������*
Tcomponents
2			
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :�*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *>î:*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full*
_output_shapes
: 
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value	B :
*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*
component_types
2			*,
_output_shapes
:
:

��:

p
CastCast"random_shuffle_queue_DequeueMany:1^add*

DstT0*

SrcT0	* 
_output_shapes
:

��
l
Reshape/shapeConst^add*
dtype0*%
valueB"�����   Z      *
_output_shapes
:
g
ReshapeReshapeCastReshape/shape*
Tshape0*
T0*'
_output_shapes
:
�Z
�
.Name_filter/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@Name_filter*%
valueB"            *
_output_shapes
:
�
-Name_filter/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *    *
_output_shapes
: 
�
/Name_filter/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *��L=*
_output_shapes
: 
�
8Name_filter/Initializer/truncated_normal/TruncatedNormalTruncatedNormal.Name_filter/Initializer/truncated_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*
_class
loc:@Name_filter
�
,Name_filter/Initializer/truncated_normal/mulMul8Name_filter/Initializer/truncated_normal/TruncatedNormal/Name_filter/Initializer/truncated_normal/stddev*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
(Name_filter/Initializer/truncated_normalAdd,Name_filter/Initializer/truncated_normal/mul-Name_filter/Initializer/truncated_normal/mean*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Name_filter
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/AssignAssignName_filter(Name_filter/Initializer/truncated_normal*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
Name_filter/readIdentityName_filter*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Conv2DConv2DReshapeName_filter/read*'
_output_shapes
:
�Z*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
Name_biases/Initializer/ConstConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/AssignAssignName_biasesName_biases/Initializer/Const*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
n
Name_biases/readIdentityName_biases*
_class
loc:@Name_biases*
T0*
_output_shapes
:
u
BiasAddBiasAddConv2DName_biases/read*
data_formatNHWC*
T0*'
_output_shapes
:
�Z
�
*batch_normalization/gamma/Initializer/onesConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
batch_normalization/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@batch_normalization/moving_mean*
shared_name 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
4batch_normalization/moving_variance/Initializer/onesConst*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?*
_output_shapes
:
�
#batch_normalization/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*6
_class,
*(loc:@batch_normalization/moving_variance*
shared_name 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
b
batch_normalization/ConstConst^add*
dtype0*
valueB *
_output_shapes
: 
d
batch_normalization/Const_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
"batch_normalization/FusedBatchNormFusedBatchNormBiasAddbatch_normalization/gamma/readbatch_normalization/beta/readbatch_normalization/Constbatch_normalization/Const_1*
epsilon%o�:*
data_formatNHWC*
T0*
is_training(*?
_output_shapes-
+:
�Z::::
f
batch_normalization/Const_2Const^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean^add*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read$batch_normalization/FusedBatchNorm:1*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Const_2*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking( *
T0*
_output_shapes
:
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance^add*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read$batch_normalization/FusedBatchNorm:2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Const_2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking( *
T0*
_output_shapes
:
f
Reshape_1/shapeConst^add*
dtype0*
valueB"����@8  *
_output_shapes
:
�
	Reshape_1Reshape"batch_normalization/FusedBatchNormReshape_1/shape*
Tshape0*
T0*
_output_shapes
:	
�p
�
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"@8     *
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6��*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6�<*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	�p*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/kernel
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�

dense/bias
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes
:
�
dense/MatMulMatMul	Reshape_1dense/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:

w
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0*
_output_shapes

:

P
dense/SigmoidSigmoiddense/BiasAdd*
T0*
_output_shapes

:

F
transpose/RankRankdense/Sigmoid*
T0*
_output_shapes
: 
W
transpose/sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
T0*
_output_shapes
: 
]
transpose/Range/startConst^add*
dtype0*
value	B : *
_output_shapes
: 
]
transpose/Range/deltaConst^add*
dtype0*
value	B :*
_output_shapes
: 
~
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*

Tidx0*
_output_shapes
:
[
transpose/sub_1Subtranspose/subtranspose/Range*
T0*
_output_shapes
:
l
	transpose	Transposedense/Sigmoidtranspose/sub_1*
Tperm0*
T0*
_output_shapes

:

l
Cast_1Cast"random_shuffle_queue_DequeueMany:2^add*

DstT0*

SrcT0	*
_output_shapes
:

L
RankConst^add*
dtype0*
value	B :*
_output_shapes
: 
\
ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
N
Rank_1Const^add*
dtype0*
value	B :*
_output_shapes
: 
^
Shape_1Const^add*
dtype0*
valueB"   
   *
_output_shapes
:
M
Sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
_output_shapes
:*

axis *
T0*
N
Z

Slice/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
h
concat/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
S
concat/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
q
concatConcatV2concat/values_0Sliceconcat/axis*
_output_shapes
:*

Tidx0*
T0*
N
^
	Reshape_2Reshape	transposeconcat*
Tshape0*
T0*
_output_shapes

:

N
Rank_2Const^add*
dtype0*
value	B :*
_output_shapes
: 
W
Shape_2Const^add*
dtype0*
valueB:
*
_output_shapes
:
O
Sub_1/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
_output_shapes
:*

axis *
T0*
N
\
Slice_1/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
j
concat_1/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
U
concat_1/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
y
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
]
	Reshape_3ReshapeCast_1concat_1*
Tshape0*
T0*
_output_shapes

:

�
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_2	Reshape_3*
T0*$
_output_shapes
::

O
Sub_2/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
]
Slice_2/beginConst^add*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
_output_shapes
:*

axis *
T0*
N
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:���������
o
	Reshape_4ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
Tshape0*
T0*
_output_shapes
:
U
ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_4Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
F
RoundRounddense/Sigmoid*
T0*
_output_shapes

:

{
$remove_squeezable_dimensions/SqueezeSqueezeRound*
squeeze_dims

���������*
T0*
_output_shapes
:

h
Cast_2Cast$remove_squeezable_dimensions/Squeeze*

DstT0	*

SrcT0*
_output_shapes
:

_
EqualEqualCast_2"random_shuffle_queue_DequeueMany:2*
T0	*
_output_shapes
:

J
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes
:

�
 accuracy/total/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/total*
valueB
 *    *
_output_shapes
: 
�
accuracy/total
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/total*
shared_name 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/count*
valueB
 *    *
_output_shapes
: 
�
accuracy/count
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/count*
shared_name 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
U
accuracy/SizeConst^add*
dtype0*
value	B :
*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
^
accuracy/ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
]
accuracy/Greater/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
l
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read^add*
T0*
_output_shapes
: 
[
accuracy/value/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
_
accuracy/Greater_1/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
_
accuracy/update_op/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
i
ExponentialDecay/learning_rateConst^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
e
ExponentialDecay/CastCastglobal_step/read^add*

DstT0*

SrcT0	*
_output_shapes
: 
b
ExponentialDecay/Cast_1/xConst^add*
dtype0*
value
B :�N*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*

SrcT0*
_output_shapes
: 
d
ExponentialDecay/Cast_2/xConst^add*
dtype0*
valueB
 *��u?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
X
gradients/ShapeConst^add*
dtype0*
valueB *
_output_shapes
: 
Z
gradients/ConstConst^add*
dtype0*
valueB
 *  �?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
q
!gradients/Mean_grad/Reshape/shapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
r
"gradients/Mean_grad/Tile/multiplesConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:
i
gradients/Mean_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
d
gradients/Mean_grad/Shape_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
gradients/Mean_grad/ConstConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_grad/Const_1Const^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_grad/Maximum/yConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
n
gradients/Reshape_4_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
 gradients/Reshape_4_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_4_grad/Shape*
Tshape0*
T0*
_output_shapes
:
k
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

�
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst^add*
dtype0*
valueB :
���������*
_output_shapes
: 
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_4_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

u
gradients/Reshape_2_grad/ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
�
 gradients/Reshape_2_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:

u
*gradients/transpose_grad/InvertPermutationInvertPermutationtranspose/sub_1*
T0*
_output_shapes
:
�
"gradients/transpose_grad/transpose	Transpose gradients/Reshape_2_grad/Reshape*gradients/transpose_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes

:

�
(gradients/dense/Sigmoid_grad/SigmoidGradSigmoidGraddense/Sigmoid"gradients/transpose_grad/transpose*
T0*
_output_shapes

:

�
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dense/Sigmoid_grad/SigmoidGrad*
data_formatNHWC*
T0*
_output_shapes
:
�
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp^add)^gradients/dense/Sigmoid_grad/SigmoidGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
�
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dense/Sigmoid_grad/SigmoidGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes

:

�
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	
�p
�
$gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_15gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�p
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp^add#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*
T0*
_output_shapes
:	
�p
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�p
}
gradients/Reshape_1_grad/ShapeConst^add*
dtype0*%
valueB"
   �   Z      *
_output_shapes
:
�
 gradients/Reshape_1_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
Tshape0*
T0*'
_output_shapes
:
�Z
n
gradients/zeros_like_1	ZerosLike$batch_normalization/FusedBatchNorm:1*
T0*
_output_shapes
:
n
gradients/zeros_like_2	ZerosLike$batch_normalization/FusedBatchNorm:2*
T0*
_output_shapes
:
n
gradients/zeros_like_3	ZerosLike$batch_normalization/FusedBatchNorm:3*
T0*
_output_shapes
:
n
gradients/zeros_like_4	ZerosLike$batch_normalization/FusedBatchNorm:4*
T0*
_output_shapes
:
�
Dgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad gradients/Reshape_1_grad/ReshapeBiasAddbatch_normalization/gamma/read$batch_normalization/FusedBatchNorm:3$batch_normalization/FusedBatchNorm:4*
epsilon%o�:*
data_formatNHWC*
T0*
is_training(*;
_output_shapes)
':
�Z::: : 
�
Bgradients/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOp^addE^gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
�
Jgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityDgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradC^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_3IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:3C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_4IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:4C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
data_formatNHWC*
T0*
_output_shapes
:
�
'gradients/BiasAdd_grad/tuple/group_depsNoOp^addK^gradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency#^gradients/BiasAdd_grad/BiasAddGrad
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentityJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency(^gradients/BiasAdd_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
gradients/Conv2D_grad/ShapeNShapeNReshapeName_filter/read*
N*
out_type0*
T0* 
_output_shapes
::
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNName_filter/read/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
&gradients/Conv2D_grad/tuple/group_depsNoOp^add*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
�Z
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
�
&Name_filter/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_filter*%
valueB*    *&
_output_shapes
:
�
Name_filter/Momentum
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/Momentum/AssignAssignName_filter/Momentum&Name_filter/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
�
Name_filter/Momentum/readIdentityName_filter/Momentum*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
&Name_biases/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/Momentum/AssignAssignName_biases/Momentum&Name_biases/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
�
Name_biases/Momentum/readIdentityName_biases/Momentum*
_class
loc:@Name_biases*
T0*
_output_shapes
:
�
4batch_normalization/gamma/Momentum/Initializer/zerosConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*    *
_output_shapes
:
�
"batch_normalization/gamma/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
)batch_normalization/gamma/Momentum/AssignAssign"batch_normalization/gamma/Momentum4batch_normalization/gamma/Momentum/Initializer/zeros*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
'batch_normalization/gamma/Momentum/readIdentity"batch_normalization/gamma/Momentum*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
3batch_normalization/beta/Momentum/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
!batch_normalization/beta/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
(batch_normalization/beta/Momentum/AssignAssign!batch_normalization/beta/Momentum3batch_normalization/beta/Momentum/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
&batch_normalization/beta/Momentum/readIdentity!batch_normalization/beta/Momentum*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
'dense/kernel/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/kernel*
valueB	�p*    *
_output_shapes
:	�p
�
dense/kernel/Momentum
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/Momentum/AssignAssigndense/kernel/Momentum'dense/kernel/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
�
dense/kernel/Momentum/readIdentitydense/kernel/Momentum*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
%dense/bias/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�
dense/bias/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/Momentum/AssignAssigndense/bias/Momentum%dense/bias/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
}
dense/bias/Momentum/readIdentitydense/bias/Momentum*
_class
loc:@dense/bias*
T0*
_output_shapes
:
\
Momentum/momentumConst^add*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
)Momentum/update_Name_filter/ApplyMomentumApplyMomentumName_filterName_filter/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_filter*
use_locking( *
T0*&
_output_shapes
:
�
)Momentum/update_Name_biases/ApplyMomentumApplyMomentumName_biasesName_biases/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_biases*
use_locking( *
T0*
_output_shapes
:
�
7Momentum/update_batch_normalization/gamma/ApplyMomentumApplyMomentumbatch_normalization/gamma"batch_normalization/gamma/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *,
_class"
 loc:@batch_normalization/gamma*
use_locking( *
T0*
_output_shapes
:
�
6Momentum/update_batch_normalization/beta/ApplyMomentumApplyMomentumbatch_normalization/beta!batch_normalization/beta/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Momentum/momentum*
use_nesterov( *+
_class!
loc:@batch_normalization/beta*
use_locking( *
T0*
_output_shapes
:
�
*Momentum/update_dense/kernel/ApplyMomentumApplyMomentumdense/kerneldense/kernel/MomentumExponentialDecay6gradients/dense/MatMul_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/kernel*
use_locking( *
T0*
_output_shapes
:	�p
�
(Momentum/update_dense/bias/ApplyMomentumApplyMomentum
dense/biasdense/bias/MomentumExponentialDecay7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes
:
�
Momentum/updateNoOp^add*^Momentum/update_Name_filter/ApplyMomentum*^Momentum/update_Name_biases/ApplyMomentum8^Momentum/update_batch_normalization/gamma/ApplyMomentum7^Momentum/update_batch_normalization/beta/ApplyMomentum+^Momentum/update_dense/kernel/ApplyMomentum)^Momentum/update_dense/bias/ApplyMomentum
�
Momentum/valueConst^add^Momentum/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
�
Momentum	AssignAddglobal_stepMomentum/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: ""�
cond_context��
�
cond/cond_textcond/pred_id:0cond/switch_t:0 *v
cond/pred_id:0
cond/read/Switch:1
cond/read:0
cond/switch_t:0
global_step:0#
global_step:0cond/read/Switch:1
�
cond/cond_text_1cond/pred_id:0cond/switch_f:0*�
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
global_step/Initializer/zeros:02
global_step/Initializer/zeros:0cond/Switch_1:0"&
global_step_read_op_cache	

add:0" 
global_step

global_step:0"�
trainable_variables��
c
Name_filter:0Name_filter/AssignName_filter/read:02*Name_filter/Initializer/truncated_normal:0
X
Name_biases:0Name_biases/AssignName_biases/read:02Name_biases/Initializer/Const:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0"�
	variables��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
c
Name_filter:0Name_filter/AssignName_filter/read:02*Name_filter/Initializer/truncated_normal:0
X
Name_biases:0Name_biases/AssignName_biases/read:02Name_biases/Initializer/Const:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
�
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
�
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
|
Name_filter/Momentum:0Name_filter/Momentum/AssignName_filter/Momentum/read:02(Name_filter/Momentum/Initializer/zeros:0
|
Name_biases/Momentum:0Name_biases/Momentum/AssignName_biases/Momentum/read:02(Name_biases/Momentum/Initializer/zeros:0
�
$batch_normalization/gamma/Momentum:0)batch_normalization/gamma/Momentum/Assign)batch_normalization/gamma/Momentum/read:026batch_normalization/gamma/Momentum/Initializer/zeros:0
�
#batch_normalization/beta/Momentum:0(batch_normalization/beta/Momentum/Assign(batch_normalization/beta/Momentum/read:025batch_normalization/beta/Momentum/Initializer/zeros:0
�
dense/kernel/Momentum:0dense/kernel/Momentum/Assigndense/kernel/Momentum/read:02)dense/kernel/Momentum/Initializer/zeros:0
x
dense/bias/Momentum:0dense/bias/Momentum/Assigndense/bias/Momentum/read:02'dense/bias/Momentum/Initializer/zeros:0"
losses


Mean:0"
train_op


Momentum"�
local_variables��
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0"�
queue_runners��
�
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*"

savers "`

update_opsR
P
%batch_normalization/AssignMovingAvg:0
'batch_normalization/AssignMovingAvg_1:0"n
	summariesa
_
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full:0
loss:0	�ޅ     .��	$�=]>��A"��

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
f
cond/SwitchSwitchIsVariableInitializedIsVariableInitialized*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
P
cond/pred_idIdentityIsVariableInitialized*
T0
*
_output_shapes
: 
{
cond/read/Switch	RefSwitchglobal_stepcond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
J
	cond/readIdentitycond/read/Switch:1*
T0	*
_output_shapes
: 
�
cond/Switch_1Switchglobal_step/Initializer/zeroscond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
Y

cond/MergeMergecond/Switch_1	cond/read*
_output_shapes
: : *
T0	*
N
G
add/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
>
addAdd
cond/Mergeadd/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
capacity�*
component_types
2			*
_output_shapes
: *
min_after_dequeue�*
shapes
: :��: *
seed2 *

seed *
	container *
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_ms���������*
Tcomponents
2			
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :�*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *>î:*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full*
_output_shapes
: 
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value	B :
*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*
component_types
2			*,
_output_shapes
:
:

��:

p
CastCast"random_shuffle_queue_DequeueMany:1^add*

DstT0*

SrcT0	* 
_output_shapes
:

��
l
Reshape/shapeConst^add*
dtype0*%
valueB"�����   Z      *
_output_shapes
:
g
ReshapeReshapeCastReshape/shape*'
_output_shapes
:
�Z*
T0*
Tshape0
�
.Name_filter/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@Name_filter*%
valueB"            *
_output_shapes
:
�
-Name_filter/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *    *
_output_shapes
: 
�
/Name_filter/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *��L=*
_output_shapes
: 
�
8Name_filter/Initializer/truncated_normal/TruncatedNormalTruncatedNormal.Name_filter/Initializer/truncated_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*
_class
loc:@Name_filter
�
,Name_filter/Initializer/truncated_normal/mulMul8Name_filter/Initializer/truncated_normal/TruncatedNormal/Name_filter/Initializer/truncated_normal/stddev*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
(Name_filter/Initializer/truncated_normalAdd,Name_filter/Initializer/truncated_normal/mul-Name_filter/Initializer/truncated_normal/mean*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Name_filter
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/AssignAssignName_filter(Name_filter/Initializer/truncated_normal*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
Name_filter/readIdentityName_filter*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Conv2DConv2DReshapeName_filter/read*'
_output_shapes
:
�Z*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
Name_biases/Initializer/ConstConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/AssignAssignName_biasesName_biases/Initializer/Const*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
n
Name_biases/readIdentityName_biases*
_class
loc:@Name_biases*
T0*
_output_shapes
:
u
BiasAddBiasAddConv2DName_biases/read*'
_output_shapes
:
�Z*
T0*
data_formatNHWC
�
*batch_normalization/gamma/Initializer/onesConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
batch_normalization/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@batch_normalization/moving_mean*
shared_name 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
4batch_normalization/moving_variance/Initializer/onesConst*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?*
_output_shapes
:
�
#batch_normalization/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*6
_class,
*(loc:@batch_normalization/moving_variance*
shared_name 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
b
batch_normalization/ConstConst^add*
dtype0*
valueB *
_output_shapes
: 
d
batch_normalization/Const_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
"batch_normalization/FusedBatchNormFusedBatchNormBiasAddbatch_normalization/gamma/readbatch_normalization/beta/readbatch_normalization/Constbatch_normalization/Const_1*
epsilon%o�:*?
_output_shapes-
+:
�Z::::*
T0*
is_training(*
data_formatNHWC
f
batch_normalization/Const_2Const^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean^add*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read$batch_normalization/FusedBatchNorm:1*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Const_2*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking( *
T0*
_output_shapes
:
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance^add*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read$batch_normalization/FusedBatchNorm:2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Const_2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking( *
T0*
_output_shapes
:
f
Reshape_1/shapeConst^add*
dtype0*
valueB"����@8  *
_output_shapes
:
�
	Reshape_1Reshape"batch_normalization/FusedBatchNormReshape_1/shape*
_output_shapes
:	
�p*
T0*
Tshape0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"@8     *
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6��*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6�<*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	�p*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/kernel
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�

dense/bias
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes
:
�
dense/MatMulMatMul	Reshape_1dense/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:

w
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
_output_shapes

:
*
T0*
data_formatNHWC
P
dense/SigmoidSigmoiddense/BiasAdd*
T0*
_output_shapes

:

F
transpose/RankRankdense/Sigmoid*
T0*
_output_shapes
: 
W
transpose/sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
T0*
_output_shapes
: 
]
transpose/Range/startConst^add*
dtype0*
value	B : *
_output_shapes
: 
]
transpose/Range/deltaConst^add*
dtype0*
value	B :*
_output_shapes
: 
~
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*

Tidx0*
_output_shapes
:
[
transpose/sub_1Subtranspose/subtranspose/Range*
T0*
_output_shapes
:
l
	transpose	Transposedense/Sigmoidtranspose/sub_1*
Tperm0*
T0*
_output_shapes

:

l
Cast_1Cast"random_shuffle_queue_DequeueMany:2^add*

DstT0*

SrcT0	*
_output_shapes
:

L
RankConst^add*
dtype0*
value	B :*
_output_shapes
: 
\
ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
N
Rank_1Const^add*
dtype0*
value	B :*
_output_shapes
: 
^
Shape_1Const^add*
dtype0*
valueB"   
   *
_output_shapes
:
M
Sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
N*
T0*
_output_shapes
:*

axis 
Z

Slice/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
h
concat/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
S
concat/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
q
concatConcatV2concat/values_0Sliceconcat/axis*
N*

Tidx0*
_output_shapes
:*
T0
^
	Reshape_2Reshape	transposeconcat*
_output_shapes

:
*
T0*
Tshape0
N
Rank_2Const^add*
dtype0*
value	B :*
_output_shapes
: 
W
Shape_2Const^add*
dtype0*
valueB:
*
_output_shapes
:
O
Sub_1/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
N*
T0*
_output_shapes
:*

axis 
\
Slice_1/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
j
concat_1/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
U
concat_1/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
y
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
]
	Reshape_3ReshapeCast_1concat_1*
_output_shapes

:
*
T0*
Tshape0
�
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_2	Reshape_3*
T0*$
_output_shapes
::

O
Sub_2/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
]
Slice_2/beginConst^add*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
N*
T0*
_output_shapes
:*

axis 
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:���������
o
	Reshape_4ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
_output_shapes
:*
T0*
Tshape0
U
ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_4Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
F
RoundRounddense/Sigmoid*
T0*
_output_shapes

:

{
$remove_squeezable_dimensions/SqueezeSqueezeRound*
squeeze_dims

���������*
T0*
_output_shapes
:

h
Cast_2Cast$remove_squeezable_dimensions/Squeeze*

DstT0	*

SrcT0*
_output_shapes
:

_
EqualEqualCast_2"random_shuffle_queue_DequeueMany:2*
T0	*
_output_shapes
:

J
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes
:

�
 accuracy/total/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/total*
valueB
 *    *
_output_shapes
: 
�
accuracy/total
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/total*
shared_name 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/count*
valueB
 *    *
_output_shapes
: 
�
accuracy/count
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/count*
shared_name 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
U
accuracy/SizeConst^add*
dtype0*
value	B :
*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
^
accuracy/ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
]
accuracy/Greater/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
l
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read^add*
T0*
_output_shapes
: 
[
accuracy/value/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
_
accuracy/Greater_1/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
_
accuracy/update_op/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
i
ExponentialDecay/learning_rateConst^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
e
ExponentialDecay/CastCastglobal_step/read^add*

DstT0*

SrcT0	*
_output_shapes
: 
b
ExponentialDecay/Cast_1/xConst^add*
dtype0*
value
B :�N*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*

SrcT0*
_output_shapes
: 
d
ExponentialDecay/Cast_2/xConst^add*
dtype0*
valueB
 *��u?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
X
gradients/ShapeConst^add*
dtype0*
valueB *
_output_shapes
: 
Z
gradients/ConstConst^add*
dtype0*
valueB
 *  �?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
q
!gradients/Mean_grad/Reshape/shapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
r
"gradients/Mean_grad/Tile/multiplesConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:
i
gradients/Mean_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
d
gradients/Mean_grad/Shape_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
gradients/Mean_grad/ConstConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_grad/Const_1Const^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
	keep_dims( *

Tidx0
�
gradients/Mean_grad/Maximum/yConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
n
gradients/Reshape_4_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
 gradients/Reshape_4_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_4_grad/Shape*
_output_shapes
:*
T0*
Tshape0
k
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

�
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst^add*
dtype0*
valueB :
���������*
_output_shapes
: 
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_4_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

u
gradients/Reshape_2_grad/ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
�
 gradients/Reshape_2_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_2_grad/Shape*
_output_shapes

:
*
T0*
Tshape0
u
*gradients/transpose_grad/InvertPermutationInvertPermutationtranspose/sub_1*
T0*
_output_shapes
:
�
"gradients/transpose_grad/transpose	Transpose gradients/Reshape_2_grad/Reshape*gradients/transpose_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes

:

�
(gradients/dense/Sigmoid_grad/SigmoidGradSigmoidGraddense/Sigmoid"gradients/transpose_grad/transpose*
T0*
_output_shapes

:

�
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dense/Sigmoid_grad/SigmoidGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp^add)^gradients/dense/Sigmoid_grad/SigmoidGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
�
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dense/Sigmoid_grad/SigmoidGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes

:

�
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	
�p
�
$gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_15gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�p
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp^add#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*
T0*
_output_shapes
:	
�p
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�p
}
gradients/Reshape_1_grad/ShapeConst^add*
dtype0*%
valueB"
   �   Z      *
_output_shapes
:
�
 gradients/Reshape_1_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*'
_output_shapes
:
�Z*
T0*
Tshape0
n
gradients/zeros_like_1	ZerosLike$batch_normalization/FusedBatchNorm:1*
T0*
_output_shapes
:
n
gradients/zeros_like_2	ZerosLike$batch_normalization/FusedBatchNorm:2*
T0*
_output_shapes
:
n
gradients/zeros_like_3	ZerosLike$batch_normalization/FusedBatchNorm:3*
T0*
_output_shapes
:
n
gradients/zeros_like_4	ZerosLike$batch_normalization/FusedBatchNorm:4*
T0*
_output_shapes
:
�
Dgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad gradients/Reshape_1_grad/ReshapeBiasAddbatch_normalization/gamma/read$batch_normalization/FusedBatchNorm:3$batch_normalization/FusedBatchNorm:4*
epsilon%o�:*;
_output_shapes)
':
�Z::: : *
T0*
is_training(*
data_formatNHWC
�
Bgradients/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOp^addE^gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
�
Jgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityDgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradC^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_3IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:3C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_4IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:4C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
_output_shapes
:*
T0*
data_formatNHWC
�
'gradients/BiasAdd_grad/tuple/group_depsNoOp^addK^gradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency#^gradients/BiasAdd_grad/BiasAddGrad
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentityJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency(^gradients/BiasAdd_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
gradients/Conv2D_grad/ShapeNShapeNReshapeName_filter/read*
out_type0*
T0* 
_output_shapes
::*
N
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNName_filter/read/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
&gradients/Conv2D_grad/tuple/group_depsNoOp^add*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
�Z
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
�
&Name_filter/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_filter*%
valueB*    *&
_output_shapes
:
�
Name_filter/Momentum
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/Momentum/AssignAssignName_filter/Momentum&Name_filter/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
�
Name_filter/Momentum/readIdentityName_filter/Momentum*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
&Name_biases/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/Momentum/AssignAssignName_biases/Momentum&Name_biases/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
�
Name_biases/Momentum/readIdentityName_biases/Momentum*
_class
loc:@Name_biases*
T0*
_output_shapes
:
�
4batch_normalization/gamma/Momentum/Initializer/zerosConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*    *
_output_shapes
:
�
"batch_normalization/gamma/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
)batch_normalization/gamma/Momentum/AssignAssign"batch_normalization/gamma/Momentum4batch_normalization/gamma/Momentum/Initializer/zeros*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
'batch_normalization/gamma/Momentum/readIdentity"batch_normalization/gamma/Momentum*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
3batch_normalization/beta/Momentum/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
!batch_normalization/beta/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
(batch_normalization/beta/Momentum/AssignAssign!batch_normalization/beta/Momentum3batch_normalization/beta/Momentum/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
&batch_normalization/beta/Momentum/readIdentity!batch_normalization/beta/Momentum*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
'dense/kernel/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/kernel*
valueB	�p*    *
_output_shapes
:	�p
�
dense/kernel/Momentum
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/Momentum/AssignAssigndense/kernel/Momentum'dense/kernel/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
�
dense/kernel/Momentum/readIdentitydense/kernel/Momentum*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
%dense/bias/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�
dense/bias/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/Momentum/AssignAssigndense/bias/Momentum%dense/bias/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
}
dense/bias/Momentum/readIdentitydense/bias/Momentum*
_class
loc:@dense/bias*
T0*
_output_shapes
:
\
Momentum/momentumConst^add*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
)Momentum/update_Name_filter/ApplyMomentumApplyMomentumName_filterName_filter/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_filter*
use_locking( *
T0*&
_output_shapes
:
�
)Momentum/update_Name_biases/ApplyMomentumApplyMomentumName_biasesName_biases/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_biases*
use_locking( *
T0*
_output_shapes
:
�
7Momentum/update_batch_normalization/gamma/ApplyMomentumApplyMomentumbatch_normalization/gamma"batch_normalization/gamma/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *,
_class"
 loc:@batch_normalization/gamma*
use_locking( *
T0*
_output_shapes
:
�
6Momentum/update_batch_normalization/beta/ApplyMomentumApplyMomentumbatch_normalization/beta!batch_normalization/beta/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Momentum/momentum*
use_nesterov( *+
_class!
loc:@batch_normalization/beta*
use_locking( *
T0*
_output_shapes
:
�
*Momentum/update_dense/kernel/ApplyMomentumApplyMomentumdense/kerneldense/kernel/MomentumExponentialDecay6gradients/dense/MatMul_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/kernel*
use_locking( *
T0*
_output_shapes
:	�p
�
(Momentum/update_dense/bias/ApplyMomentumApplyMomentum
dense/biasdense/bias/MomentumExponentialDecay7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes
:
�
Momentum/updateNoOp^add*^Momentum/update_Name_filter/ApplyMomentum*^Momentum/update_Name_biases/ApplyMomentum8^Momentum/update_batch_normalization/gamma/ApplyMomentum7^Momentum/update_batch_normalization/beta/ApplyMomentum+^Momentum/update_dense/kernel/ApplyMomentum)^Momentum/update_dense/bias/ApplyMomentum
�
Momentum/valueConst^add^Momentum/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
�
Momentum	AssignAddglobal_stepMomentum/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
�
initNoOp^global_step/Assign^Name_filter/Assign^Name_biases/Assign!^batch_normalization/gamma/Assign ^batch_normalization/beta/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign^dense/kernel/Assign^dense/bias/Assign^Name_filter/Momentum/Assign^Name_biases/Momentum/Assign*^batch_normalization/gamma/Momentum/Assign)^batch_normalization/beta/Momentum/Assign^dense/kernel/Momentum/Assign^dense/bias/Momentum/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedName_filter*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedName_biases*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedbatch_normalization/gamma*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedbatch_normalization/beta*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedbatch_normalization/moving_mean*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized#batch_normalization/moving_variance*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedName_filter/Momentum*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedName_biases/Momentum*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized"batch_normalization/gamma/Momentum*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitialized!batch_normalization/beta/Momentum*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense/kernel/Momentum*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense/bias/Momentum*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
�
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_16"/device:CPU:0*
N*
T0
*
_output_shapes
:*

axis 
�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:
�
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepBName_filterBName_biasesBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBdense/kernelB
dense/biasBName_filter/MomentumBName_biases/MomentumB"batch_normalization/gamma/MomentumB!batch_normalization/beta/MomentumBdense/kernel/MomentumBdense/bias/MomentumBaccuracy/totalBaccuracy/count*
_output_shapes
:
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
�
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
N*

Tidx0*
_output_shapes
:*
T0
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
valueB:
���������*
_output_shapes
:
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:*
T0
*
Tshape0
�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������
�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze"/device:CPU:0*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:���������
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
O
concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
concat_2ConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat_2/axis*
N*

Tidx0*#
_output_shapes
:���������*
T0
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedName_filter*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedName_biases*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedbatch_normalization/gamma*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedbatch_normalization/beta*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedbatch_normalization/moving_mean*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized#batch_normalization/moving_variance*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedName_filter/Momentum*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedName_biases/Momentum*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitialized"batch_normalization/gamma/Momentum*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitialized!batch_normalization/beta/Momentum*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense/kernel/Momentum*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense/bias/Momentum*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_14"/device:CPU:0*
N*
T0
*
_output_shapes
:*

axis 
�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:
�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepBName_filterBName_biasesBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBdense/kernelB
dense/biasBName_filter/MomentumBName_biases/MomentumB"batch_normalization/gamma/MomentumB!batch_normalization/beta/MomentumBdense/kernel/MomentumBdense/bias/Momentum*
_output_shapes
:
�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
�
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
N*

Tidx0*
_output_shapes
:*
T0
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
valueB:
���������*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:*
T0
*
Tshape0
�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������
�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze"/device:CPU:0*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:���������
>
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign

init_all_tablesNoOp
/
group_deps_1NoOp^init_2^init_all_tables
�
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullloss*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_22754d84cf534ce6be3908813e8782b0/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�BName_biasesBName_biases/MomentumBName_filterBName_filter/MomentumBbatch_normalization/betaB!batch_normalization/beta/MomentumBbatch_normalization/gammaB"batch_normalization/gamma/MomentumBbatch_normalization/moving_meanB#batch_normalization/moving_varianceB
dense/biasBdense/bias/MomentumBdense/kernelBdense/kernel/MomentumBglobal_step*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*
dtype0*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesName_biasesName_biases/MomentumName_filterName_filter/Momentumbatch_normalization/beta!batch_normalization/beta/Momentumbatch_normalization/gamma"batch_normalization/gamma/Momentumbatch_normalization/moving_mean#batch_normalization/moving_variance
dense/biasdense/bias/Momentumdense/kerneldense/kernel/Momentumglobal_step*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBName_biases*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignName_biasessave/RestoreV2*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
z
save/RestoreV2_1/tensor_namesConst*
dtype0*)
value BBName_biases/Momentum*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1AssignName_biases/Momentumsave/RestoreV2_1*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
q
save/RestoreV2_2/tensor_namesConst*
dtype0* 
valueBBName_filter*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2AssignName_filtersave/RestoreV2_2*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
save/RestoreV2_3/tensor_namesConst*
dtype0*)
value BBName_filter/Momentum*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3AssignName_filter/Momentumsave/RestoreV2_3*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
~
save/RestoreV2_4/tensor_namesConst*
dtype0*-
value$B"Bbatch_normalization/beta*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4Assignbatch_normalization/betasave/RestoreV2_4*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_5/tensor_namesConst*
dtype0*6
value-B+B!batch_normalization/beta/Momentum*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5Assign!batch_normalization/beta/Momentumsave/RestoreV2_5*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_6/tensor_namesConst*
dtype0*.
value%B#Bbatch_normalization/gamma*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6Assignbatch_normalization/gammasave/RestoreV2_6*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_7/tensor_namesConst*
dtype0*7
value.B,B"batch_normalization/gamma/Momentum*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7Assign"batch_normalization/gamma/Momentumsave/RestoreV2_7*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_8/tensor_namesConst*
dtype0*4
value+B)Bbatch_normalization/moving_mean*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8Assignbatch_normalization/moving_meansave/RestoreV2_8*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_9/tensor_namesConst*
dtype0*8
value/B-B#batch_normalization/moving_variance*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9Assign#batch_normalization/moving_variancesave/RestoreV2_9*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
q
save/RestoreV2_10/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10Assign
dense/biassave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
z
save/RestoreV2_11/tensor_namesConst*
dtype0*(
valueBBdense/bias/Momentum*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11Assigndense/bias/Momentumsave/RestoreV2_11*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
s
save/RestoreV2_12/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12Assigndense/kernelsave/RestoreV2_12*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
|
save/RestoreV2_13/tensor_namesConst*
dtype0**
value!BBdense/kernel/Momentum*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13Assigndense/kernel/Momentumsave/RestoreV2_13*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
r
save/RestoreV2_14/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save/Assign_14Assignglobal_stepsave/RestoreV2_14*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
-
save/restore_allNoOp^save/restore_shard"�Qo/�L     ��n�	W�M]>��AJ��
�9�8
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyMomentum
var"T�
accum"T�
lr"T	
grad"T
momentum"T
out"T�"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
p
	AssignSub
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
�
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
�
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
5
Pow
x"T
y"T
z"T"
Ttype:
	2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( �
�
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint����������
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
&
QueueSizeV2

handle
size�
�
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring �
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
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
list(type)(0�
/
Round
x"T
y"T"
Ttype:
	2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
<
SigmoidGrad
y"T
dy"T
z"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
9
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype*1.4.02v1.4.0-rc1-11-g130a514��

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
f
cond/SwitchSwitchIsVariableInitializedIsVariableInitialized*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
P
cond/pred_idIdentityIsVariableInitialized*
T0
*
_output_shapes
: 
{
cond/read/Switch	RefSwitchglobal_stepcond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
J
	cond/readIdentitycond/read/Switch:1*
T0	*
_output_shapes
: 
�
cond/Switch_1Switchglobal_step/Initializer/zeroscond/pred_id*
_class
loc:@global_step*
T0	*
_output_shapes
: : 
Y

cond/MergeMergecond/Switch_1	cond/read*
N*
T0	*
_output_shapes
: : 
G
add/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
>
addAdd
cond/Mergeadd/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
	container *
component_types
2			*
_output_shapes
: *
min_after_dequeue�*
shapes
: :��: *
seed2 *

seed *
capacity�*
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_ms���������*
Tcomponents
2			
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :�*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *>î:*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full*
_output_shapes
: 
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value	B :
*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*
component_types
2			*,
_output_shapes
:
:

��:

p
CastCast"random_shuffle_queue_DequeueMany:1^add*

DstT0*

SrcT0	* 
_output_shapes
:

��
l
Reshape/shapeConst^add*
dtype0*%
valueB"�����   Z      *
_output_shapes
:
g
ReshapeReshapeCastReshape/shape*
Tshape0*
T0*'
_output_shapes
:
�Z
�
.Name_filter/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@Name_filter*%
valueB"            *
_output_shapes
:
�
-Name_filter/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *    *
_output_shapes
: 
�
/Name_filter/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@Name_filter*
valueB
 *��L=*
_output_shapes
: 
�
8Name_filter/Initializer/truncated_normal/TruncatedNormalTruncatedNormal.Name_filter/Initializer/truncated_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*
_class
loc:@Name_filter
�
,Name_filter/Initializer/truncated_normal/mulMul8Name_filter/Initializer/truncated_normal/TruncatedNormal/Name_filter/Initializer/truncated_normal/stddev*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
(Name_filter/Initializer/truncated_normalAdd,Name_filter/Initializer/truncated_normal/mul-Name_filter/Initializer/truncated_normal/mean*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Name_filter
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/AssignAssignName_filter(Name_filter/Initializer/truncated_normal*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
Name_filter/readIdentityName_filter*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
Conv2DConv2DReshapeName_filter/read*'
_output_shapes
:
�Z*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
Name_biases/Initializer/ConstConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/AssignAssignName_biasesName_biases/Initializer/Const*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
n
Name_biases/readIdentityName_biases*
_class
loc:@Name_biases*
T0*
_output_shapes
:
u
BiasAddBiasAddConv2DName_biases/read*
data_formatNHWC*
T0*'
_output_shapes
:
�Z
�
*batch_normalization/gamma/Initializer/onesConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
batch_normalization/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@batch_normalization/moving_mean*
shared_name 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
4batch_normalization/moving_variance/Initializer/onesConst*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?*
_output_shapes
:
�
#batch_normalization/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*6
_class,
*(loc:@batch_normalization/moving_variance*
shared_name 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
b
batch_normalization/ConstConst^add*
dtype0*
valueB *
_output_shapes
: 
d
batch_normalization/Const_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
"batch_normalization/FusedBatchNormFusedBatchNormBiasAddbatch_normalization/gamma/readbatch_normalization/beta/readbatch_normalization/Constbatch_normalization/Const_1*
epsilon%o�:*
data_formatNHWC*
T0*
is_training(*?
_output_shapes-
+:
�Z::::
f
batch_normalization/Const_2Const^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean^add*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read$batch_normalization/FusedBatchNorm:1*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Const_2*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking( *
T0*
_output_shapes
:
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance^add*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read$batch_normalization/FusedBatchNorm:2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Const_2*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
:
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking( *
T0*
_output_shapes
:
f
Reshape_1/shapeConst^add*
dtype0*
valueB"����@8  *
_output_shapes
:
�
	Reshape_1Reshape"batch_normalization/FusedBatchNormReshape_1/shape*
Tshape0*
T0*
_output_shapes
:	
�p
�
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"@8     *
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6��*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *s6�<*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	�p*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/kernel
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�

dense/bias
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes
:
�
dense/MatMulMatMul	Reshape_1dense/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:

w
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0*
_output_shapes

:

P
dense/SigmoidSigmoiddense/BiasAdd*
T0*
_output_shapes

:

F
transpose/RankRankdense/Sigmoid*
T0*
_output_shapes
: 
W
transpose/sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
T0*
_output_shapes
: 
]
transpose/Range/startConst^add*
dtype0*
value	B : *
_output_shapes
: 
]
transpose/Range/deltaConst^add*
dtype0*
value	B :*
_output_shapes
: 
~
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*

Tidx0*
_output_shapes
:
[
transpose/sub_1Subtranspose/subtranspose/Range*
T0*
_output_shapes
:
l
	transpose	Transposedense/Sigmoidtranspose/sub_1*
Tperm0*
T0*
_output_shapes

:

l
Cast_1Cast"random_shuffle_queue_DequeueMany:2^add*

DstT0*

SrcT0	*
_output_shapes
:

L
RankConst^add*
dtype0*
value	B :*
_output_shapes
: 
\
ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
N
Rank_1Const^add*
dtype0*
value	B :*
_output_shapes
: 
^
Shape_1Const^add*
dtype0*
valueB"   
   *
_output_shapes
:
M
Sub/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
_output_shapes
:*

axis *
T0*
N
Z

Slice/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
h
concat/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
S
concat/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
q
concatConcatV2concat/values_0Sliceconcat/axis*
_output_shapes
:*

Tidx0*
T0*
N
^
	Reshape_2Reshape	transposeconcat*
Tshape0*
T0*
_output_shapes

:

N
Rank_2Const^add*
dtype0*
value	B :*
_output_shapes
: 
W
Shape_2Const^add*
dtype0*
valueB:
*
_output_shapes
:
O
Sub_1/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
_output_shapes
:*

axis *
T0*
N
\
Slice_1/sizeConst^add*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
j
concat_1/values_0Const^add*
dtype0*
valueB:
���������*
_output_shapes
:
U
concat_1/axisConst^add*
dtype0*
value	B : *
_output_shapes
: 
y
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
]
	Reshape_3ReshapeCast_1concat_1*
Tshape0*
T0*
_output_shapes

:

�
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_2	Reshape_3*
T0*$
_output_shapes
::

O
Sub_2/yConst^add*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
]
Slice_2/beginConst^add*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
_output_shapes
:*

axis *
T0*
N
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:���������
o
	Reshape_4ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
Tshape0*
T0*
_output_shapes
:
U
ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_4Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
F
RoundRounddense/Sigmoid*
T0*
_output_shapes

:

{
$remove_squeezable_dimensions/SqueezeSqueezeRound*
squeeze_dims

���������*
T0*
_output_shapes
:

h
Cast_2Cast$remove_squeezable_dimensions/Squeeze*

DstT0	*

SrcT0*
_output_shapes
:

_
EqualEqualCast_2"random_shuffle_queue_DequeueMany:2*
T0	*
_output_shapes
:

J
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes
:

�
 accuracy/total/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/total*
valueB
 *    *
_output_shapes
: 
�
accuracy/total
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/total*
shared_name 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
dtype0*!
_class
loc:@accuracy/count*
valueB
 *    *
_output_shapes
: 
�
accuracy/count
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *!
_class
loc:@accuracy/count*
shared_name 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
U
accuracy/SizeConst^add*
dtype0*
value	B :
*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
^
accuracy/ConstConst^add*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
]
accuracy/Greater/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
l
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read^add*
T0*
_output_shapes
: 
[
accuracy/value/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
_
accuracy/Greater_1/yConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
_
accuracy/update_op/eConst^add*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
i
ExponentialDecay/learning_rateConst^add*
dtype0*
valueB
 *
�#<*
_output_shapes
: 
e
ExponentialDecay/CastCastglobal_step/read^add*

DstT0*

SrcT0	*
_output_shapes
: 
b
ExponentialDecay/Cast_1/xConst^add*
dtype0*
value
B :�N*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*

SrcT0*
_output_shapes
: 
d
ExponentialDecay/Cast_2/xConst^add*
dtype0*
valueB
 *��u?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
X
gradients/ShapeConst^add*
dtype0*
valueB *
_output_shapes
: 
Z
gradients/ConstConst^add*
dtype0*
valueB
 *  �?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
q
!gradients/Mean_grad/Reshape/shapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
r
"gradients/Mean_grad/Tile/multiplesConst^add*
dtype0*
valueB:*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
:
i
gradients/Mean_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
d
gradients/Mean_grad/Shape_1Const^add*
dtype0*
valueB *
_output_shapes
: 
�
gradients/Mean_grad/ConstConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_grad/Const_1Const^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB: *
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
gradients/Mean_grad/Maximum/yConst^add*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
n
gradients/Reshape_4_grad/ShapeConst^add*
dtype0*
valueB:*
_output_shapes
:
�
 gradients/Reshape_4_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_4_grad/Shape*
Tshape0*
T0*
_output_shapes
:
k
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

�
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst^add*
dtype0*
valueB :
���������*
_output_shapes
: 
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_4_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

u
gradients/Reshape_2_grad/ShapeConst^add*
dtype0*
valueB"   
   *
_output_shapes
:
�
 gradients/Reshape_2_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:

u
*gradients/transpose_grad/InvertPermutationInvertPermutationtranspose/sub_1*
T0*
_output_shapes
:
�
"gradients/transpose_grad/transpose	Transpose gradients/Reshape_2_grad/Reshape*gradients/transpose_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes

:

�
(gradients/dense/Sigmoid_grad/SigmoidGradSigmoidGraddense/Sigmoid"gradients/transpose_grad/transpose*
T0*
_output_shapes

:

�
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dense/Sigmoid_grad/SigmoidGrad*
data_formatNHWC*
T0*
_output_shapes
:
�
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp^add)^gradients/dense/Sigmoid_grad/SigmoidGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
�
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dense/Sigmoid_grad/SigmoidGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes

:

�
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*
_output_shapes
:	
�p
�
$gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_15gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	�p
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp^add#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*
T0*
_output_shapes
:	
�p
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�p
}
gradients/Reshape_1_grad/ShapeConst^add*
dtype0*%
valueB"
   �   Z      *
_output_shapes
:
�
 gradients/Reshape_1_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
Tshape0*
T0*'
_output_shapes
:
�Z
n
gradients/zeros_like_1	ZerosLike$batch_normalization/FusedBatchNorm:1*
T0*
_output_shapes
:
n
gradients/zeros_like_2	ZerosLike$batch_normalization/FusedBatchNorm:2*
T0*
_output_shapes
:
n
gradients/zeros_like_3	ZerosLike$batch_normalization/FusedBatchNorm:3*
T0*
_output_shapes
:
n
gradients/zeros_like_4	ZerosLike$batch_normalization/FusedBatchNorm:4*
T0*
_output_shapes
:
�
Dgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad gradients/Reshape_1_grad/ReshapeBiasAddbatch_normalization/gamma/read$batch_normalization/FusedBatchNorm:3$batch_normalization/FusedBatchNorm:4*
epsilon%o�:*
data_formatNHWC*
T0*
is_training(*;
_output_shapes)
':
�Z::: : 
�
Bgradients/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOp^addE^gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
�
Jgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityDgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradC^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
:
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_3IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:3C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
Lgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_4IdentityFgradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:4C^gradients/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*
_output_shapes
: 
�
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
data_formatNHWC*
T0*
_output_shapes
:
�
'gradients/BiasAdd_grad/tuple/group_depsNoOp^addK^gradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency#^gradients/BiasAdd_grad/BiasAddGrad
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentityJgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency(^gradients/BiasAdd_grad/tuple/group_deps*W
_classM
KIloc:@gradients/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*'
_output_shapes
:
�Z
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
gradients/Conv2D_grad/ShapeNShapeNReshapeName_filter/read*
N*
out_type0*
T0* 
_output_shapes
::
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNName_filter/read/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4������������������������������������*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
&gradients/Conv2D_grad/tuple/group_depsNoOp^add*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
�Z
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
�
&Name_filter/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_filter*%
valueB*    *&
_output_shapes
:
�
Name_filter/Momentum
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_filter*
shared_name 
�
Name_filter/Momentum/AssignAssignName_filter/Momentum&Name_filter/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
�
Name_filter/Momentum/readIdentityName_filter/Momentum*
_class
loc:@Name_filter*
T0*&
_output_shapes
:
�
&Name_biases/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@Name_biases*
valueB*    *
_output_shapes
:
�
Name_biases/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@Name_biases*
shared_name 
�
Name_biases/Momentum/AssignAssignName_biases/Momentum&Name_biases/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
�
Name_biases/Momentum/readIdentityName_biases/Momentum*
_class
loc:@Name_biases*
T0*
_output_shapes
:
�
4batch_normalization/gamma/Momentum/Initializer/zerosConst*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
valueB*    *
_output_shapes
:
�
"batch_normalization/gamma/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@batch_normalization/gamma*
shared_name 
�
)batch_normalization/gamma/Momentum/AssignAssign"batch_normalization/gamma/Momentum4batch_normalization/gamma/Momentum/Initializer/zeros*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
'batch_normalization/gamma/Momentum/readIdentity"batch_normalization/gamma/Momentum*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
:
�
3batch_normalization/beta/Momentum/Initializer/zerosConst*
dtype0*+
_class!
loc:@batch_normalization/beta*
valueB*    *
_output_shapes
:
�
!batch_normalization/beta/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@batch_normalization/beta*
shared_name 
�
(batch_normalization/beta/Momentum/AssignAssign!batch_normalization/beta/Momentum3batch_normalization/beta/Momentum/Initializer/zeros*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
&batch_normalization/beta/Momentum/readIdentity!batch_normalization/beta/Momentum*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
:
�
'dense/kernel/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/kernel*
valueB	�p*    *
_output_shapes
:	�p
�
dense/kernel/Momentum
VariableV2*
	container *
_output_shapes
:	�p*
dtype0*
shape:	�p*
_class
loc:@dense/kernel*
shared_name 
�
dense/kernel/Momentum/AssignAssigndense/kernel/Momentum'dense/kernel/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
�
dense/kernel/Momentum/readIdentitydense/kernel/Momentum*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	�p
�
%dense/bias/Momentum/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes
:
�
dense/bias/Momentum
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
�
dense/bias/Momentum/AssignAssigndense/bias/Momentum%dense/bias/Momentum/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
}
dense/bias/Momentum/readIdentitydense/bias/Momentum*
_class
loc:@dense/bias*
T0*
_output_shapes
:
\
Momentum/momentumConst^add*
dtype0*
valueB
 *fff?*
_output_shapes
: 
�
)Momentum/update_Name_filter/ApplyMomentumApplyMomentumName_filterName_filter/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_filter*
use_locking( *
T0*&
_output_shapes
:
�
)Momentum/update_Name_biases/ApplyMomentumApplyMomentumName_biasesName_biases/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@Name_biases*
use_locking( *
T0*
_output_shapes
:
�
7Momentum/update_batch_normalization/gamma/ApplyMomentumApplyMomentumbatch_normalization/gamma"batch_normalization/gamma/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *,
_class"
 loc:@batch_normalization/gamma*
use_locking( *
T0*
_output_shapes
:
�
6Momentum/update_batch_normalization/beta/ApplyMomentumApplyMomentumbatch_normalization/beta!batch_normalization/beta/MomentumExponentialDecayLgradients/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Momentum/momentum*
use_nesterov( *+
_class!
loc:@batch_normalization/beta*
use_locking( *
T0*
_output_shapes
:
�
*Momentum/update_dense/kernel/ApplyMomentumApplyMomentumdense/kerneldense/kernel/MomentumExponentialDecay6gradients/dense/MatMul_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/kernel*
use_locking( *
T0*
_output_shapes
:	�p
�
(Momentum/update_dense/bias/ApplyMomentumApplyMomentum
dense/biasdense/bias/MomentumExponentialDecay7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
use_nesterov( *
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes
:
�
Momentum/updateNoOp^add*^Momentum/update_Name_filter/ApplyMomentum*^Momentum/update_Name_biases/ApplyMomentum8^Momentum/update_batch_normalization/gamma/ApplyMomentum7^Momentum/update_batch_normalization/beta/ApplyMomentum+^Momentum/update_dense/kernel/ApplyMomentum)^Momentum/update_dense/bias/ApplyMomentum
�
Momentum/valueConst^add^Momentum/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
�
Momentum	AssignAddglobal_stepMomentum/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
�
initNoOp^global_step/Assign^Name_filter/Assign^Name_biases/Assign!^batch_normalization/gamma/Assign ^batch_normalization/beta/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign^dense/kernel/Assign^dense/bias/Assign^Name_filter/Momentum/Assign^Name_biases/Momentum/Assign*^batch_normalization/gamma/Momentum/Assign)^batch_normalization/beta/Momentum/Assign^dense/kernel/Momentum/Assign^dense/bias/Momentum/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedName_filter*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedName_biases*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedbatch_normalization/gamma*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedbatch_normalization/beta*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedbatch_normalization/moving_mean*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitialized#batch_normalization/moving_variance*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedName_filter/Momentum*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedName_biases/Momentum*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized"batch_normalization/gamma/Momentum*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitialized!batch_normalization/beta/Momentum*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense/kernel/Momentum*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense/bias/Momentum*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
�
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_16"/device:CPU:0*
_output_shapes
:*

axis *
T0
*
N
�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:
�
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepBName_filterBName_biasesBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBdense/kernelB
dense/biasBName_filter/MomentumBName_biases/MomentumB"batch_normalization/gamma/MomentumB!batch_normalization/beta/MomentumBdense/kernel/MomentumBdense/bias/MomentumBaccuracy/totalBaccuracy/count*
_output_shapes
:
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
�
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
_output_shapes
:*

axis *
T0*
N
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
valueB:
���������*
_output_shapes
:
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
Tshape0*
T0
*
_output_shapes
:
�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������
�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze"/device:CPU:0*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:���������
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
O
concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
concat_2ConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat_2/axis*#
_output_shapes
:���������*

Tidx0*
T0*
N
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedName_filter*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedName_biases*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedbatch_normalization/gamma*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedbatch_normalization/beta*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedbatch_normalization/moving_mean*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitialized#batch_normalization/moving_variance*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedName_filter/Momentum*
dtype0*
_class
loc:@Name_filter*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedName_biases/Momentum*
dtype0*
_class
loc:@Name_biases*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitialized"batch_normalization/gamma/Momentum*
dtype0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitialized!batch_normalization/beta/Momentum*
dtype0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense/kernel/Momentum*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense/bias/Momentum*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
�
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_14"/device:CPU:0*
_output_shapes
:*

axis *
T0
*
N
�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:
�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
dtype0*�
value�B�Bglobal_stepBName_filterBName_biasesBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBdense/kernelB
dense/biasBName_filter/MomentumBName_biases/MomentumB"batch_normalization/gamma/MomentumB!batch_normalization/beta/MomentumBdense/kernel/MomentumBdense/bias/Momentum*
_output_shapes
:
�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
�
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
_output_shapes
:*

axis *
T0*
N
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
valueB:
���������*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
Tshape0*
T0
*
_output_shapes
:
�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������
�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze"/device:CPU:0*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:���������
>
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign

init_all_tablesNoOp
/
group_deps_1NoOp^init_2^init_all_tables
�
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullloss*
N*
_output_shapes
: 
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_22754d84cf534ce6be3908813e8782b0/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�BName_biasesBName_biases/MomentumBName_filterBName_filter/MomentumBbatch_normalization/betaB!batch_normalization/beta/MomentumBbatch_normalization/gammaB"batch_normalization/gamma/MomentumBbatch_normalization/moving_meanB#batch_normalization/moving_varianceB
dense/biasBdense/bias/MomentumBdense/kernelBdense/kernel/MomentumBglobal_step*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*
dtype0*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesName_biasesName_biases/MomentumName_filterName_filter/Momentumbatch_normalization/beta!batch_normalization/beta/Momentumbatch_normalization/gamma"batch_normalization/gamma/Momentumbatch_normalization/moving_mean#batch_normalization/moving_variance
dense/biasdense/bias/Momentumdense/kerneldense/kernel/Momentumglobal_step*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBName_biases*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignName_biasessave/RestoreV2*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
z
save/RestoreV2_1/tensor_namesConst*
dtype0*)
value BBName_biases/Momentum*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1AssignName_biases/Momentumsave/RestoreV2_1*
validate_shape(*
_class
loc:@Name_biases*
use_locking(*
T0*
_output_shapes
:
q
save/RestoreV2_2/tensor_namesConst*
dtype0* 
valueBBName_filter*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2AssignName_filtersave/RestoreV2_2*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
z
save/RestoreV2_3/tensor_namesConst*
dtype0*)
value BBName_filter/Momentum*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3AssignName_filter/Momentumsave/RestoreV2_3*
validate_shape(*
_class
loc:@Name_filter*
use_locking(*
T0*&
_output_shapes
:
~
save/RestoreV2_4/tensor_namesConst*
dtype0*-
value$B"Bbatch_normalization/beta*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4Assignbatch_normalization/betasave/RestoreV2_4*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_5/tensor_namesConst*
dtype0*6
value-B+B!batch_normalization/beta/Momentum*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5Assign!batch_normalization/beta/Momentumsave/RestoreV2_5*
validate_shape(*+
_class!
loc:@batch_normalization/beta*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_6/tensor_namesConst*
dtype0*.
value%B#Bbatch_normalization/gamma*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6Assignbatch_normalization/gammasave/RestoreV2_6*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_7/tensor_namesConst*
dtype0*7
value.B,B"batch_normalization/gamma/Momentum*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7Assign"batch_normalization/gamma/Momentumsave/RestoreV2_7*
validate_shape(*,
_class"
 loc:@batch_normalization/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_8/tensor_namesConst*
dtype0*4
value+B)Bbatch_normalization/moving_mean*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8Assignbatch_normalization/moving_meansave/RestoreV2_8*
validate_shape(*2
_class(
&$loc:@batch_normalization/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_9/tensor_namesConst*
dtype0*8
value/B-B#batch_normalization/moving_variance*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9Assign#batch_normalization/moving_variancesave/RestoreV2_9*
validate_shape(*6
_class,
*(loc:@batch_normalization/moving_variance*
use_locking(*
T0*
_output_shapes
:
q
save/RestoreV2_10/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10Assign
dense/biassave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
z
save/RestoreV2_11/tensor_namesConst*
dtype0*(
valueBBdense/bias/Momentum*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11Assigndense/bias/Momentumsave/RestoreV2_11*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes
:
s
save/RestoreV2_12/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12Assigndense/kernelsave/RestoreV2_12*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
|
save/RestoreV2_13/tensor_namesConst*
dtype0**
value!BBdense/kernel/Momentum*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13Assigndense/kernel/Momentumsave/RestoreV2_13*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0*
_output_shapes
:	�p
r
save/RestoreV2_14/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save/Assign_14Assignglobal_stepsave/RestoreV2_14*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
cond_context��
�
cond/cond_textcond/pred_id:0cond/switch_t:0 *v
cond/pred_id:0
cond/read/Switch:1
cond/read:0
cond/switch_t:0
global_step:0#
global_step:0cond/read/Switch:1
�
cond/cond_text_1cond/pred_id:0cond/switch_f:0*�
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
global_step/Initializer/zeros:02
global_step/Initializer/zeros:0cond/Switch_1:0"&
global_step_read_op_cache	

add:0" 
global_step

global_step:0"�
trainable_variables��
c
Name_filter:0Name_filter/AssignName_filter/read:02*Name_filter/Initializer/truncated_normal:0
X
Name_biases:0Name_biases/AssignName_biases/read:02Name_biases/Initializer/Const:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0"!
local_init_op

group_deps_1"�
	variables��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
c
Name_filter:0Name_filter/AssignName_filter/read:02*Name_filter/Initializer/truncated_normal:0
X
Name_biases:0Name_biases/AssignName_biases/read:02Name_biases/Initializer/Const:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
�
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
�
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
|
Name_filter/Momentum:0Name_filter/Momentum/AssignName_filter/Momentum/read:02(Name_filter/Momentum/Initializer/zeros:0
|
Name_biases/Momentum:0Name_biases/Momentum/AssignName_biases/Momentum/read:02(Name_biases/Momentum/Initializer/zeros:0
�
$batch_normalization/gamma/Momentum:0)batch_normalization/gamma/Momentum/Assign)batch_normalization/gamma/Momentum/read:026batch_normalization/gamma/Momentum/Initializer/zeros:0
�
#batch_normalization/beta/Momentum:0(batch_normalization/beta/Momentum/Assign(batch_normalization/beta/Momentum/read:025batch_normalization/beta/Momentum/Initializer/zeros:0
�
dense/kernel/Momentum:0dense/kernel/Momentum/Assigndense/kernel/Momentum/read:02)dense/kernel/Momentum/Initializer/zeros:0
x
dense/bias/Momentum:0dense/bias/Momentum/Assigndense/bias/Momentum/read:02'dense/bias/Momentum/Initializer/zeros:0"
losses


Mean:0"n
	summariesa
_
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full:0
loss:0"
train_op


Momentum"�
local_variables��
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0"�
queue_runners��
�
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*"`

update_opsR
P
%batch_normalization/AssignMovingAvg:0
'batch_normalization/AssignMovingAvg_1:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"&

summary_op

Merge/MergeSummary:0"
ready_op


concat_2:0"U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0"
init_op


group_deps���]       a[��	\r]>��A:PL/Users/evanmdoyle/Programming/PervasiveComputing/LabProject/Model/model.ckpti�i       mS+		Vr]>��A:�}�v       NC�}	4r]>��A*i
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullNh>

loss�
@L4�]       a[��	W�]>��A:PL/Users/evanmdoyle/Programming/PervasiveComputing/LabProject/Model/model.ckpt�؇