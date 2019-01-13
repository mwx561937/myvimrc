##五、事件和属性


###1.事件
#### 1.1 事件简写

	v-on:click=""
	简写方式 @click=""

#### 1.2 事件对象$event

	 包含事件相关信息、如事件源、事件类型、偏移量
	  target、type、offsetx
#### 1.3 事件冒泡

	  阻止事件冒泡
	      a)原生js方式，依赖于事件对象(必须先拿到事件对象) e.stopPropagation();
			    @keydown="fk"  e.keyCode==13  console.log('您按了回车')
	      b)使用修饰符，@click.stop="functionname"
			    @click.prevent="fk" 阻止键盘默认事件
			    @keydown.13="fk"
			    @keydown.enter="fk"
#### 1.4 事件默认行为

	阻止默认行为:
		a)原生js方式、依赖于事件对象
#### 1.5 键盘事件

	回车：@keydown.13 或 @keydown.enter
	上：@keydown.38 或@keydown.up

	默认没有@keydown.a/b/c...事件，可以自定义键盘事件，也称为自定义键码或自定义键位的别名
	全局:Vue.config.keyCodes{
	a:65,f1:112
	}
#### 1.6 事件修饰符

	.stop
	.prevent
	.{keyCode|keyAlias}
	.native
	.once
### 2.属性

#### 2.1 属性绑定和属性的简写

	v-bind用于属性的绑定，v-bind:属性="" 
	简写:v-bind:src=""  :src=""
	
#### 2.2 class和style属性

	绑定class 和 style属性时语法比较复杂

	方式1：变量形式

	data:{bb:'aa'}
	<style>
	.aa{
	color:...
	}
	</style>
	<p :class="bb"></p>

	方式2：数组形式，同时引用多个

	<p :class="[bb,dd]">Helloworld</p>

	方式3：json的形式(最常用 的)

	<p :class="{aa:true}"></p>  应用aa这个样式
	<p :class="{aa:false}"></p>  不应用
	<p :class="{aa:true,cc:true}"></p>
	<p :class="{aa:flag,cc:true}"></p>

	<p :class="{aa:num>0}"></p>

	方式4：变量引用json形式
	data:{
	hello:{aa:true,cc:false}
	}
	<p :class="hello"></p>

## 六、模板

### 1.简介

	vue.js使用基于HTML的模板语法，可以将DOM绑定到Vue实例中的数据
	模板就是{{}}，用来进行数据绑定，显示在页面中
	也称为Mustache语法

### 2.数据绑定的方式

	a.双向绑定
	v-model
	b.单向绑定
	方式1.
		使用两对大括号{{}}，可能会出现闪烁的问题，可以使用 v-cloak
	方式2.使用
		v-text="msg" 只会当作纯文本
		v-html="msg" 会把标签显示出来
		v-once必须使用{{}}的形式来传递值
		v-pre 是什么就显示什么，比如{{msg}}就显示成{{msg}},不会进行解析

## 七、过滤器

### 1.简介

	用来过滤模型数据，在显示之前进行数据处理和筛选
	语法：{{data | filter1(参数) | filter2}}
### 2.关于内置过滤器

	vue1.0中内置许多过滤器，如：
		currency、uppercase、lowercase
		limitBy
		orderBy
		filterBy
	vue2.0中已经删除了所有的内置过滤器
	如何解决：
	a:使用第三方工具库，如loadash、date-fns日期格式化、accounting.js货币格式化
	b:使用自定义过滤器，
### 3.自定义过滤器

	分类：全局过滤器、局部过滤器

#### 3.1 自定义全局过滤器

	使用全局方法Vue.filter(过滤器ID，过滤器函数)
	Vue.filter('addZero',function(data){ });
	<h3>{{3|addZero}}</h3>

	Vue.filter('number',(data,n)=>{
	//console.log(data,n)
	return data.toFixed(n);保留n位小数
	})
	<h3>{{12.345678 | number(3)}}</h3>保留3位小数

#### 3.2 自定义局部过滤器

	filters:{
		number:(data,n)=>{
			return data.toFixed(n);
		}
	}

## 七、 Vue的生命周期

	vue实例从创建到销毁的过程，称为生命周期，共有八个阶段

## 八、计算属性

### 1.基本用法 

	计算属性也是用来存储数据的，但具有以下几个特点：
	a.数据可以进行逻辑处理操作
	b.对计算属性中的数据进行监视
	data:{普通属性}
	computed:{//计算属性
		msg2:function(){//该函数必须有返回值，用来获取属性，称为get函数
			return '欢迎来到南京'
		},
		reverseMsg:function(){
			return this.msg.split(' ').reverse().join(' ');
		}
	}

### 2.计算属性 vs 方法

	将计算属性的get函数定义为一个方法也可以实现类似的功能
	区别：
	a.计算属性是基于它的依赖进行更新的，只有在相关依赖发生改变时才能更新变化
	b.计算属性是缓存的，只要相关依赖没有改变，多次访问计算属性得到的值是之前缓存的计算结果，不会多次执行
	所依赖的就是return 后的值

### 3.get和set

	计算属性由两部分组成：get和set，分别用来获取计算属性和设置计算属性

	ex:
	num2:{
		get:function(){
			console.log('num2'+new Date());
			return this.num1-1;
		}
		set:function(val){
			this.num2=111;//  !!!!!这里会产生无限迭代
		}
	}
	如果要修改
	num2:{
		get:function(){
			console.log('num2'+new Date());
			return this.num1-1;
		}
		set:function(val){
			this.num1=111;//  因为num2与num1是依赖关系，所以修改num1就等于修改num2
		}
	}

## 九、vue实例的属性和方法

### 1.属性

	vm.$el
	vm.$data
	vm.$options
	vm.$refs

	vm.属性名  获取 data中 的属性
	console.log(vm.msg)

	vm.$el 获取vue实例关联的元素
	console.log(vm.$el);//DOM对象
	vm.$el.style.color='red'

	vm.$data //获取数据对象data
	console.log(vm.$data);
	console.log(vm.$data.msg)

	vm.$options 它用来获取自定义属性
	console.log(vm.$options.name);
	console.log(vm.$options.age);

	vm.$refs 获取所有添加ref属性的元素
	console.log(vm.$refs);
	vm.$refs.hello.style.color='blue'

### 2.方法

	vm.$mount()

	vm.$mount('#app')实现手动挂载vue实例
	||(上下是相等的)
	new Vue({
		data:{
			msg:'welcome'
		}
	}).$mount('#app')

	vm.$destroy()

	属性不会删除

	vm.$nextTick(callback) //在DOM更新完成后再执行回调函数，一般在修改数据之后，使用该方法，以便获取更新后的DOM

	vm.name='汤姆'
	//DOM还没更新完，Vue实现响应式并不是数据发生改变之后DOM立即变化，需要按一定的策略进行DOM更新，需要时间！！
	console.log(vm.$refs.title.textContent);

	vm.$nextTick(function(){
		console.log(vm.$refs.title.textContent);
	})


	vm.$set(object,key,value)
		设置属性的值
		后加的属性监视不了this.old=24
		只有通过这种方法进行添加属性
		是Vue.set的别名

		if(this.user.age){
			this.user.age++;
		}
		else{
			Vue.set(this.user,'age',1);//这是全局的
		}
	vm.$delete()
		Vue.delete(this.user,'age');

	vm.$watch()//这个没有全局的
	方式一：
	vm.$watch('name',function(){
		console.log('name被修改啦')
	})
	vm.$watch('name',function(newValue,oldValue){
		console.log('name被修改啦'+oldValue+"新值"+newValue)
	})

	//对对象属性的监视
	vm.$watch('name',function(newValue,oldValue){
		console.log('name被修改啦'+oldValue+"新值"+newValue)
	},true)

	方式二：使用Vue实例其中的watch选项
	watch:{
		age:(newValue,oldValue)=>{
			console.log(...)
		}
	}
	监视一个对象属性
	watch:{
		user:{
			handle:(newValue,oldValue)=>{//=原值和新值是一样的
				console.log('...')
			},
			deep:true//深度监视，当对象 中的属性发生变化时也会监视
		}
	}


	如何监视一个属性

## 十、自定义指令

	分类：全局指令、局部指令
	
### 1.自定义全局指令

	使用全局方法Vue.directive(指令ID，定义对象)

	v-hello
	Vue.directive('hello',{
		bind(){
			alert('指令第一次绑定到元素上时调用，只调用一次，可执行初始化操作')
		},
		inserted(){
			alert('被绑定元素插入到DOM中时调用');
		},
		updata(){
			alert('被绑定元素所在模板更新时调用')
		},
		componentUpdated(){
			alert('被绑定元素所在模板完成一次更新周期时调用')
		},
		unbind(){
			alert('指令与元素解绑时调用，只调用一次');
		}
	});

	v-world="name"
	Vue.directive('world',{
		bind(el,binding){
			alert('hhhh')
			console.log(el);
			el.style.color="red";
			console.log(binding);
			console.log(binding.value);
		}
	})

	传入一个简单的函数
	Vue.directive('world',function(){
		alert('wbs17022');
	})

### 2.自定义局部指令

	directives:{
		//自定义局部指令
		focus:function(el,binding){
			el.focus();
		}//这么做是不对的，必须等到元素加载进去之后再进行焦点

		focus:{
			inserted(){
				el.focus();
			}
		}
	}


## 十一、组件component

### 1.什么是组件？

	组件(Component)是Vue.js最强大的功能之一，组件可以扩展HTML元素，封装可重用的代码
	组件是自定义元素(对象)

### 2.定义组件的方式

	方式1：先创建组件构造器，然后由组件构造器创建组件

	1.使用Vue.extend创建一个组件构造器
	var MyComponent = Vue.extend({
		template:'<h3>Hello world</h3>'
	})
	2.使用Vue.component(标签名，组件构造器)，根据组件构造器来创建组件
	Vue.component('hello',MyComponent);

	方式2：直接创建组件
	Vue.component('world',{
		template:'<h1>你好，世界</h1>'
	});

	局部组件：只在当前实例中使用
	<my-world></my-world>
	new Vue({
		el:'#app',
		component:{
			'my-world':{
				template:'<h3>welcome</h3>'//如果这个内容太多,使用<template>,
				data:function(){
					return {
						name:'alice'
					}
				}
			}

		},
	})

	<template id='wbs'>
		<div>//只能有一个根元素
			<h3>{{msg}}</h3>
			<ul>
			<li v-for="value in arr">{{value}}</li>
			</ul>
		</div>
	</template>
	new Vue({
		el:'#app',
		component:{
			'my-world':{
				template:'#wbs',
				data:function(){
					return {
						msg:'welcome',
						arr:['tom','jack']
					}
				}
			}

		}
	})

### 3.组件的分类

	分类：全局组件、局部组件

### 4.引用模板

	将组件内容放到模板<template>中并引用

### 5.动态组件

	<component :is="">组件
	多个组件使用同一个挂载点，然后动态的在它们之间切换

	<div id="">
		<div>
		<!--<keep-alive>-->//这个是可以产生缓存的
			<component :is="flag"></component>
		<!--</keep-alive>-->
		</div>
	</div>
	data:{
		flag:'my-hello'
	},
	components:{
		'my-hello':{
			template:'<h3>{{x}}</h3>',
			data(){
				return{
					x:Math.random();
				}
			}
		},
		'my-world':{
			template:'<h3>{{y}}</h3>',
			data(){
				return{
					y:Math.random();
				}
			}

		}
	}

	
## 十二、组件之间传递数据

### 1.父子组件

	在一个组件内部定义另一个组件，称为父子组件
	子组件只能在父组件内部使用
	默认情况下，子组件无法访问父组件中的数据，每个组件实例的作用域是独立的

### 2.组件间数据传递通信(通信)

#### 2.1子组件访问父组件的数据

	a)电话费调用子组件时，绑定想要获取的父组件中的数据
	b)在子组件内部，使用props选项声明获取的数据，即接收来自父组件的数据
	总结：父组件通过props向下传递数据给子组件
	注：组件中的数据共有三种形式：data、props、computed

#### 2.2 父组件访问子组件的数据

	a)在子组件中使用vm.$emit(事件名，数据)触发一个自定义事件，事件名自定义
	b)父组件在使用子组件的地方监听子组件触发的事件，并在父组件中定义方法，用来获取数据
	总结：子组件通过events给父组件发送消息，实际上就是子组件把自己的数据发送给父组件


123
