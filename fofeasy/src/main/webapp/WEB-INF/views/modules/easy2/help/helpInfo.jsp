<!-- 帮助手册.jsp -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<link href="${ctxResources}/images/title-logo.ico" rel="shortcut icon">
<title>帮助手册</title>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/common-css.jsp"%>
<link rel="stylesheet"
	href="${ctxResources}/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" />
</head>
<body>
	<!-- 头部分开始 -->
	<%@ include file="/WEB-INF/views/system/header.jsp"%>
	<!-- 头部分结束 -->
	<!-- 内容部分开始 -->
	<section id="helpInfo" class="fof-content">
		<div class="row">
			<div class="col-md-12">
				<!-- 内容头部 -->
				<div class="head">
					<div class="title"><p>帮助中心</p></div>
					<div class="search"><input type="text" placeholder="请输入搜索关键字"/><img src="${ctxResources}/images/basicSearch.png" ></div>
					<div class="note">
						<span>热门搜索：</span>
						<span>FOF</span>
						<span>对比</span>
						<span>策略</span>
						<span>指数</span>						
					</div>					
				</div>
				<!-- 内容主体 -->
				<div class="con" >
					<!-- 左侧导航 -->
					<div class="leftNav">
						<ul class="navLeft">
							<li id="fa" style="color:#0686d8;border-left:3px solid #0686d8">FAQ</li>
							<li ><span id="subul" style="display:inline-block;width:100%">产品说明</span>
								<ul class="subNavLeft" style="display:none">
									<li >功能概述</li>
									<li >产品透视</li>
									<li >投顾挖掘</li>
									<li >行业数据</li>
									<li >组合配置</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 右侧内容 -->
					<div class="rightC">
						<div class="rightCon">
						 <div  id="FAQ" style="">
						 	<div class="QA">
						 		<p class="faqQ">1.私募云通数据库数据的来源是什么？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：私募云通以线上和线下结合的方式获取数据，线上以基金业协会，第三方、投顾公开为主，线下以投顾授权、券商银行托管授权为主。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">2.为什么产品透视中我在搜索条件【净值日期】中输入了时间范围，但是搜索结果显示有该范围之外的基金出现？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：此处基金净值日期范围代表的是：搜索在该日期范围内有披露过净值的基金，并非是搜索净值完全匹配该日期范围的基金。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">3.为什么我的搜索结果无法全部下载？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：目前FOF Easy最多支持200条记录的下载，请在页面底部设置每页显示200条记录后进行下载。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">4.行业数据中私募云通指数的如何编制？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：私募云通的指数样本是收录在CHFDB数据库中通过国内信托平台、券商、基金子公司等平台以及私募自主发行的具有公开业绩的私募产品。作为指数成份的产品在纳入指数时须成立时间满1个月且连续两期披露净值。在成立时间的界定上，我们采用私募云通--私募基金数据库中产品的第一个净值披露日作为产品的成立日期，该日期1个月之后的第一周末点开始将产品纳入指数计算范围。各类指数样本的调整采取自动剔除规则，凡清盘和到期的产品，自动剔出当期的指数计算。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">5.如何上传自有数据？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：自有数据的上传入口为我的——自主上传，按照界面要求准备数据。此功能目前针对使用升级版和组合版的用户开放，如您使用的是基础版，请联系您的对口销售。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">6.投顾的指标是如何计算的？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：将投顾旗下所有产品编制成一条投顾指数（以投顾公司旗下首只基金的成立时间满3个月作为基期），再根据投顾指数计算得到相应指标。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">7.投顾挖掘中，投资策略筛选，选择A策略，为何会选出B策略的投顾呢？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：因为筛选条件中投资策略的筛选逻辑是，只要该投顾发行过该策略的产品即可被检索出来，表格中只是显示其主要策略。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">8.产品在净值走势中出现过回撤（下跌），那么同类排名中最大回撤一直为0的原因是什么？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：同类排名中的指标是月频指标，根据月频踩点的净值会将月中的波动平滑掉，因此根据月频净值计算出来的最大回撤会偏小、甚至为0。</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">9.为什么风险指标中最大回撤与动态回撤最低点不相等？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答：表格中指标为数据库计算好的特定频率指标，而动态回撤是根据净值序列实时计算的，可能会采用到更高频的日频净值序列，因此计算得到的最大回撤（即动态回撤最低点）会略大于表格中展示的最大回撤</p>
						 	</div>
						 	<div class="QA">
						 		<p class="faqQ">10. 投顾的主要策略是如何判断的？<span id="arrow-down" class="glyphicon glyphicon-chevron-down" ></span><span id="arrow-up" class="glyphicon glyphicon-chevron-up"  style="display:none"></span></p>
						 		<p class="faqA">答: 除其他一级策略、股权、创业、其他基金外，数量最多的二级投资策略。</p>
						 	</div>
						 	
						 </div>
						 <div class="mol " id="pro_func" style="display:none">
						 	<p style="text-indent:25px">
						 		FOF EASY 是基于私募云通·中国私募证券投资基金数据库（CHFDB）开发的可视化数据分析WEB终端，旨在帮助用户结合私募市场数据了解自有产品的业绩和风险情况，并以辅助机构投资人进行产品分析、投顾挖掘、组合产品设计和动态跟踪产品，及时提示风险，发现问题。目前分为FOF Easy2.0基础版、FOF Easy2.0升级版、以及FOF Easy2.0组合版3个版本。具体功能差别可详询您的销售人员。
						 	</p>
						 </div>
						 <div class="mol" id="pro_pers" style="display:none">
						 	<div class="outerDiv">
								<div id="slider" style="width:100%;float:left;">
									<ul id="historyUl" class="historyUl">
										<li style="color:#0686d8">产品筛选</li>
										<li>产品分析</li>
										<li>一键导出报告</li>
										<li>产品对比</li>
										<li>产品收藏</li>
										<li class="histolineActive" style="margin-top: 30px;margin-left: -550px; background-color:#0686d8"></li>
									</ul>
									<br>
								</div>
								<div id="hitoryLine" style="margin-bottom: 25px;"></div>
							</div>
							<div class="per_mol perChose">
								<p>（1）输入关键字直接查询<br/>
								用户直接输入基金名称或基金名称中关键字，点击确定，找到目标基金。<br/><br/>
								（2）条件筛选<br/>
								用户输入单个或多个条件，搜索符合条件的基金。具体条件分为：<br/>
								【统计区间】成立以来、今年以来、近一个月、近三个月、近六个月、近一年、近三年、近五年<br/>
								【净值日期】开始日期 -- 结束日期<br/>
								【业绩指标】年化收益、最大回撤、年化波动率、年化夏普比<br/>
								【发行方式】不限、自主发行、券商资管、期货资管、信托计划、公募专户及子公司管理计划、保险公司及子公司管理计划、有限合伙、单账户、海外基金、其他<br/>
								【投资标的】不限、股票、债券等固定收益、货币型、期货、期权、指数型、混合型、股权、新三板、海外资产、其他<br/>
								【投资策略】股票策略（股票多头、股票多空、市场中性）、管理期货（期货趋势、期货套利、其他管理期货）、相对价值（ETF套利、可转债套利、固定收益套利、分级基金套利、期权套利、其他相对价值策略）、事件驱动（并购重组、定向增发、大宗交易、其他事件驱动）、组合策略（MOM、FOF、TOT、其他组合策略）、其他一级策略（新三板、海外基金、货币基金、其他二级策略）<br/>
								【结构形式】不限、结构化、非结构化<br/>
								【基金状态】不限、运行中、已清盘<br/>
								【成立年限】不限、1年以下、1-3年、3-5年、5年以上、自定义<br/>
								【发行地区】上海、广东、深圳、北京、其他<br/>
								【披露频率】不限、周频、月频、日频<br/><br/>
								（3）筛选结果显示<br/>
								点击右侧       可根据用户关注指标调节表头显示字段，对于不关注的信息可以隐去。
								点击指标名旁小三角可根据指标进行正序、倒序排序。<br/><br/>
								（4）筛选结果下载<br/>
								点击右侧可对筛选结果的当前页面进行下载，在页面右下角可选择当前页面显示产品数量，分为20/50/100/200，即最多支持200支产品的信息下载。
								可自定义统计区间、数据频率、基准、以及相关指标，导出excel。
								</p>
								
							</div>
							<div class="per_mol" style="display:none">
								<p>
								点击基金名称，进入单个产品产品分析界面，分为基本信息、业绩指标、归因分析、情景分析四大模块。<br/><br/>
								（1）基本信息<br/>
								该界面展示了基金产品的基本信息，以及投资顾问和投资经理的简介。<br/>
								【基本信息】包含产品简称、产品名称、发行方式、投资策略、成立日期、发行规模、结构形式、发行地区、基金状态、基金到期日、申购状态、赎回状态、开放日、净值披露频率、证券经纪、托管银行、认购费、赎回费、管理费、托管费、预期收益率、产品备案日期、业绩报酬。<br/><br/>
								（2）业绩指标<br/>
								（a）历史净值<br/>
								可在右上方                                自定义统计时间段。<br/>
								可在累计收益率图下方点击选择不同benchmark，目前支持沪深300、上证50、南华商品指数、中证500、中债指数、私募全市场指数、以及该产品所在策略指数。<br/>
								可将鼠标放在图上，查看某一时点产品与benchmark具体净值及收益率。<br/>
								点击可下载该产品历史净值。<br/>
								（b）同类排名<br/>
								用户可查看该产品在今年以来、近三个月、近六个月、近一年等不同统计区间内年化收益率、累计收益、年化夏普比、最大回撤的表现情况及所在同类策略中的排名情况，如（223/1201），则代表该产品在同类策略1201只基金中，排名223位。<br/>
								可在右边            切换统计区间，具体查看该产品与同策略产品这四个指标上战胜同策略基金的比例。<br/>
								（c）收益指标<br/>
								可选择          周频/月频指标<br/>
								可查看该产品、市场指数、以及该产品所在策略指数在成立以来、今年以来、近一个月、近三个月、近六个月、近一年、近两年的收益表现。<br/>
								可在顶部切换累计收益率/年化收益率。<br/>
								可在图形右侧点击产品名、市场指数、以及策略指数名进行聚焦查看。<br/>
								可在表格中             切换相应市场指数。<br/>
								可           切换查看产品、市场指数、该产品所在策略指数的在不同统计区间段内的正负周期收益比。<br/>															
								（d）风险指标<br/>
								可查看该产品、市场指数、以及该产品所在策略指数在不同统计区间段的波动率、年化波动率、最大回撤、VaR等风险指标的表现。<br/>
								可在             切换相应市场指数。<br/>
								可在右侧切换统计时间段           。<br/>
								可在图形右侧点击产品名、市场指数、以及策略指数名进行聚焦查看。<br/>
								可查看该产品在某一特定统计区间内动态回撤情况。<br/>
								可在                                处自定义统计时间段。<br/>
								可将鼠标放置在图形上查看具体某一时点动态回撤（也称为峰值回撤），动态回撤为0，代表基金创新高，动态回撤的形成期代表峰值回撤的时间跨度。<br/>															
								（e）风险调整收益指标<br/>
								可查看该产品、市场指数、该产品所属策略在成立以来、今年以来、近一个月、近三个月、近六个月、近一年、近两年在风险调整后收益指标上的表现情况。<br/>
								可在右边方框               选择不同的风险调整收益指标：年化夏普比率、年化卡玛比率、年化索提诺比率、年化特雷诺比率、年化信息比率、年化詹森指数。<br/>
								可在图形右侧点击产品名、市场指数、以及策略指数名进行聚焦查看。<br/>
								可将鼠标放置在图形上查看该产品、市场指数、策略指数查看在某一统计区间某一风险调整后指标具体的值。<br/>
								
								（f）相对指标<br/>
								可查看该产品相对于不同市场指数在成立以来、今年以来、近一个月、近三个月、近六个月、近一年、近两年不同统计统计区间段中相对指标的表现。<br/>
								可在右侧框中             选择不同的市场指数作为Benchmark。<br/>
								可在图右下方点击不同指标进行图形化展示。<br/><br/>
								（3）归因分析<br/>
								本模块利用Fama三因子模型对股票型基金进行外部归因。多因子模型并不是一个因果关系的模型，所谓的因子只是在统计上和收益率存在相关关系，是试图解释收益风险的维度。<br/>
								在分析股票型基金时，由于持仓信息无法实时获取，客户希望仅通过基于收益的方法就能够对可获知净值变动的股票型基金进行较为及时的分析，即求其对每个因子的平均风险暴露。<br/>
								值得注意的是，本模块中：<br/>
								1、每个回归单位为6个月，新成立6个月内的基金不予进行回归计算。<br/>
								2、  净值披露不满24个数据，不予回归计算；<br/>
								3、假设投资经理6个月的产品操作风格保持不变。<br/>
								（a）收益贡献分解<br/>								
								可从收益贡献的角度查看特定统计区内该产品在市场因子、规模因子、Alpha、价值因子上的平均暴露程度。<br/>
								可查看成立以来、近一年、近六个月、近三个月、近一个月的不同统计区间内各因子的暴露程度，从而发现是否发生风格漂移。<br/>								
								（b）风险贡献分解<br/>								
								可从风险贡献的角度查看特定统计区内该产品在市场因子、规模因子、Alpha、价值因子上的平均暴露程度。<br/>
								可查看成立以来、近一年、近六个月、近三个月、近一个月的不同统计区间内各因子的暴露程度，从而发现是否发生风格漂移。<br/>							
								（c）因子相关性<br/>								
								可查看某一特定统计区间内市场因子、市值因子、规模因子及基金超额收益之间的相关性。<br/>								
								（4）情景分析<br/>
								（a）压力测试<br/>								
								可模拟在股灾1.0、股灾2.0、2016年股市熔断等极端行情下该产品、市场指数以及策略指数的业绩表现情况。<br/>
								可将鼠标放置在图形上显示具体涨跌数值。<br/>
								可点击该产品名、市场指数、策略指数进行聚焦查看。<br/>								
								（b）市道分析<br/>								
								可模拟在沪深300涨跌不同幅度情况下该产品、市场指数、策略指数的收益表现情况，从而发掘基金在不同市场行情下的适应程度。<br/>
								可选择不同模拟时间区间。<br/>
								可将鼠标放置在图形上显示具体涨跌数值。<br/>
								可点击该产品名、市场指数、策略指数进行聚焦查看。<br/>
								</p>
							</div>
							<div class="per_mol" style="display:none">
								<p>对于以上分析结果，可点击生成报告，一键生成PDF报告。</p>
							</div>
							<div class="per_mol" style="display:none">
								<p>
								（1）添加对比产品<br/>		
								根据多维量化筛选筛选出一批符合条件的基金后，可点击基金序号前的+号进行添加基金，进行对比，点击      即可展开对比栏，点击【对比】进行对比。<br/>		
								可点击产品名称后在页面左上方点击添加对比            进行添加，再点击产品透视回到主界面<br/>		
								最多可同时支持4个产品进行对比。<br/><br/>										
								（2）产品对比分析<br/>		
								主要对四个方面进行对比：基本信息、业绩指标、归因分析、情景分析。<br/>		
								（a）基本信息<br/>		
								展示基金产品的备案日期、成立日期、发行规模、基金状态、最新净值日期、净值披露频率、投资策略、投资顾问、投资经理、发行主体、结构形式。<br/>										
								（b）业绩指标<br/>		
								用户可自定义统计时间段                                展示对比基金的累计收益率。<br/>										
								用户可查看对比基金在某一统计区间的年化收益率、累计收益率、年化夏普比率、最大回撤以及所在同类策略中的排名情况，如（178/7601）则代表在同策略7601只基金产品中，排名178位。<br/>		
								用户可具体查看对比基金与同策略产品在年化收益率、累计收益率、年化夏普比率、最大回撤上战胜同策略基金的比例。<br/>		
								可切换统计区间今年以来或成立以来。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>										
								可查看对比基金的正负周期比、对比基金与市场指数的累计收益率与年化收益率。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。		<br/>								
								可查看对比基金与市场指数的波动率、年化波动率、最大回撤、VaR指标表现。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>										
								可查看对比基金的在某一统计区间的动态回撤情况。<br/>		
								可在框内                           输入时间自定义统计区间。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>										
								可查看对比基金在某一统计区间的年化夏普比率、年化卡玛比率、年化索提诺比率、风险价值调整比的表现。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>										
								可查看对比基金在某一统计区间的胜率、相关信息、年化信息比、年化詹森指数、年化特雷诺比率的表现。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>										
								可从收益贡献的角度查看特定统计区内对比基金在市场因子、规模因子、Alpha、价值因子上的平均暴露程度。<br/>		
								可从风险贡献的角度查看特定统计区内对比基金在市场因子、规模因子、Alpha、价值因子上的平均暴露程度。<br/>		
								点击基金产品名可进行隐藏或显示。<br/>										
								可模拟在股灾1.0、股灾2.0、2016年股市熔断等极端行情下对比基金产品、市场指数以及策略的业绩表现情况。<br/>		
								可模拟在沪深300涨跌不同幅度情况下对比基金产品、市场指数的收益表现情况，从而发掘基金在不同市场行情下的适应程度。<br/>		
								将鼠标放置在图形上则可展示具体的指标值。<br/>		
								</p>
							</div>
							<div class="per_mol" style="display:none">
								<p>
								可点击产品列表前五角星，进行产品收藏，收藏的产品可在我的-我的收藏-产品中查看。
								</p>
							</div>						
						 </div>
						 <div class="mol" id="pro_eva" style="display:none">
							 <div class="outerDiv">
									<div id="slider" style="width:100%;">
										<ul id="EvaHistoryUl" class="historyUl">
											<li style="color:#0686d8">投顾筛选</li>
											<li>投顾分析</li>
											<li>投顾对比</li>
											<li class="histolineActive" style="margin-top: 30px;margin-left: -330px; background-color:#0686d8"></li>
										</ul>
										<br>
									</div>
									<div id="hitoryLine" style="margin-bottom: 25px;"></div>
								</div>
								<div class="eva_mol perChose">
									<p>
									（1）输入关键字直接查询<br/>
									用户直接输入投顾名称或投顾名称中关键字，点击确定，找到目标投顾。<br/><br/>
									（2）条件筛选<br/>
									用户可设置多个指标进行复合筛选。<br/>
									【统计区间】成立以来、今年以来、近一个月、近三个月、近六个月、近一年、近三年、近五年<br/>
									【业绩指标】年化收益、最大回撤、年化波动率、年化夏普比<br/>
									【投资策略】股票策略（股票多头、股票多空、市场中性）、管理期货（期货趋势、期货套利、其他管理期货）、相对价值（ETF套利、可转债套利、固定收益套利、分级基金套利、期权套利、其他相对价值策略）、事件驱动（并购重组、定向增发、大宗交易、其他事件驱动）、组合策略（MOM、FOF、TOT、其他组合策略）、其他一级策略（新三板、海外基金、货币基金、其他二级策略）<br/>
									【成立年限】1年以下、1-3年、3-5年、5年以上、自定义<br/>
									【自主发行规模】0-1亿、1-10亿、10到20亿、20-50亿、50亿以上、其他<br/>
									【顾问管理规模】0-1亿、1-10亿、10到20亿、20-50亿、50亿以上、其他<br/>
									【办公地址】上海、广东、深圳、北京、其他<br/><br/>								
									（3）筛选结果显示<br/>
									点击右侧       可根据用户关注指标调节表头显示字段，对于不关注的信息可以隐去。<br/>
									点击指标名旁小三角可根据指标进行正序、倒序排序。<br/>
									</p>									
								</div>
								<div class="eva_mol" style="display:none">
									<p>
									（1）基本信息<br/>
									用户可查看投顾旗下存续产品数量、累计产品数量以及旗下产品在各个策略的分布情况。<br/>
									用户可切换不同统计年份查看投顾收益率与沪深300指数的对比。<br/>
									用户可查看投顾在不同统计区间（今年以来、近三个月、近六个月、近一年）年化收益率、累计收益、年化夏普比率、最大回撤在同规模投顾的排名、战胜同规模投顾的比例。<br/>								
									可查看投顾投研团队概况以及投资顾问简介。<br/><br/>									
									（2）业绩指标<br/>
									可切换统计区间查看投顾旗下所有产品的投资策略、产品状态、统计日期、年化收益率、最大回撤，并可按年化收益率或最大回撤排序。<br/>									
									可查看所有产品的收益风险比，每个点代表一只基金成立以来的收益风险比，通常我们也喜欢称之为风险调整后的收益，代表单位风险带来的收益。例如我们选择年化超额收益和年化波动率，该点越靠近左上方，代表产品做得越好。<br/>
									从公司层面考察，所有点越靠近左上方，公司业绩越好，各产品业绩越稳定。若点比较分散，则说明投顾旗下，各产品业绩越不稳定，可能是由于策略带来，或者投顾公司只是在做好几个代表性产品的原因。<br/>
									可点击切换策略进行更深层次分析，从策略角度考察：一种策略旗下所有点越靠近左上方，该策略的业绩越好，各产品业绩越稳定。若点比较分散，则说明该策略旗下各产品业绩越不稳定，风险越大。<br/>									
									可查看投顾运营能力，包括：今年一起来累计以来收益率、成立以来累计收益率、成立年限、自主管理规模、注册资本（万元）、顾问管理规模、高管是否有从业资格、注册资本实缴比例、投资策略数量（类）、是否是会员、年均产品发行数量（只/年）、员工数量。<br/>									
									可查看投顾在不同统计区间与私募全市场指数、沪深300指数的盈利能力对比，盈利能力指标包括：累计收益率、年化收益率、年化卡玛比率、年化索提诺比率、年化特雷诺比率、年化信息比率、年化詹森指数。<br/>									
									可查看投顾在不同统计区间与私募全市场指数、沪深300指数的风控能力对比，风控能力指标包括：年化下行标准差、最大回撤、最大回撤形成期、贝塔系数、风险价值。<br/>									
									可查看投顾在不同统计区间与私募全市场指数、沪深300指数的投研能力对比，风控能力指标包括：择时能力、选股能力、超额收益可持续性、胜率。<br/><br/>									
									（3）旗下产品<br/>
									可查看投顾旗下运行中/已清盘的产品列表。<br/>
									可按照统计区间及投资策略对投顾旗下产品进行再次筛选。<br/>
									点击右侧可根据用户关注指标调节表头显示字段，对于不关注的信息可以隐去。<br/>
									点击指标名旁小三角可根据指标进行正序、倒序排序。<br/>									
									可自定义统计区间，选择该投顾旗下产品进行产品相关性分析。<br/>
									最多可选择10个产品。<br/>
									</p>
								</div>
								<div class="eva_mol" style="display:none">
									<p>
									根据多维量化筛选筛选出一批符合条件的投顾后，可点击投顾名称序号前的+号进行添加投顾，进行对比，点击      即可展开对比栏，点击【对比】进行对比。<br/>
									最多可同时支持4家投顾进行对比。<br/>
									可对投顾的运营能力、盈利能力、投研能力、研发能力进行对比。<br/>
									点击可继续筛选投顾，进行添加。<br/>
									</p>
								</div>
						 </div>
						 <div class="mol" id="pro_indus" style="display:none">
						 	 <div class="outerDiv">
									<div id="slider" style="width:100%;">
										<ul id="IndHistoryUl" class="historyUl">
											<li style="color:#0686d8">私募云通指数</li>
											<li>指数相关性</li>
											<li>全市场数据</li>
											<li class="histolineActive" style="margin-top: 30px;margin-left: -330px; background-color:#0686d8"></li>
										</ul>
										<br>
									</div>
									<div id="hitoryLine" style="margin-bottom: 25px;"></div>
								</div>
								<div class="ind_mol perChose">
									<p>
									可选择市场指数及私募云通指数的图形化展示，市场指数包括沪深300、中证500、上证50、中债指数、南华期货指数；私募云通指数包括私募全市场指数、私募fof指数、股票多头指数、股票多空指数、市场中性指数、债券策略指数、管理期货指数、宏观策略指数、事件驱动策略指数、相对价值策略指数、多策略指数、组合投资策略指数。<br/>	
									可点击自定义统计区间。<br/>	
									可将鼠标放置在图形上则可展示具体的指标值。<br/>	
									</p>									
								</div>
								<div class="ind_mol" style="display:none">
									<p>
									可选择某一策略指数查看其在时间序列上及截面时点上与市场指数（沪深300、中证500、上证50、中债指数、南华商品指数）的相关性；<br/>	
									可选择一个或多个市场指数。<br/>	
									可点击选择近6月、近1年、近2年统计区间或自定义截面统计区间。<br/>	
									</p>
								</div>
								<div class="ind_mol" style="display:none">
									<p>
									（1）管理人数量<br/>	
									可查看历年私募证券管理人数量、私募股权创业管理人数量、私募其他管理数量。<br/>	
									可点击选择具体某一年份查看每月私募证券管理人、私募股权创业管理人、私募其他管理人数量。<br/>	
									可将鼠标放置在图形上则可展示具体的数值。<br/>	<br/>	
									（2）基金产品数量<br/>	
									可查看历年私募证券基金产品数量、私募股权创业基金产品数量、私募其他基金产品数量。<br/>	
									可点击选择具体某一年份查看每月私募证券基金产品数量、私募股权创业基金产品数量、私募其他基金产品数量。<br/>	
									可将鼠标放置在图形上则可展示具体的数值。<br/>	<br/>	
									（3）管理基金规模<br/>	
									可查看历年私募证券基金规模、私募股权创业基金规模、私募其他基金规模。<br/>	
									可点击选择具体某一年份查看每月私募证券基金规模、私募股权创业基金规模、私募其他基金规模。<br/>	
									可将鼠标放置在图形上则可展示具体的数值。<br/>	<br/>	
									（4）全市场收益<br/>	
									可查看历年全市场产品收益率或点击选择某一年份查看全市场月度收益率。<br/>	
									可将鼠标放置在图形上则可展示具体的数值。<br/>	<br/>	
									（5）策略指数表现<br/>	
									可点击选择具体某一月份查看各大策略指数的月度收益率及近六月夏普比。<br/>	
									可将鼠标放置在图形上则可展示具体的数值。<br/>	
									</p>
								</div>
						 </div>
						 <div class="mol" id="pro_comb" style="display:none">
						 	 <div class="outerDiv">
									<div id="slider" style="width:100%;">
										<ul id="CombHistoryUl" class="historyUl">
											<li style="color:#0686d8">策略组合</li>
											<li>产品组合</li>
											<li class="histolineActive" style="margin-top: 30px;margin-left: -220px; background-color:#0686d8"></li>
										</ul>
										<br>
									</div>
									<div id="hitoryLine" style="margin-bottom: 25px;"></div>
								</div>
								<div class="comb_mol perChose">
									<p>
									（1）策略组合观察面板<br/>
									在观测面板中，用户可查看历史曾组合的策略组合的业绩表现、净资产、今日盈亏、持仓仓位。<br/>
									点击可设置预警条件或止损条件，可自定义统计区间，对净值、单个子基金规模权重、年化收益率、动态回撤、年化夏普比、年化波动率进行设置。<br/>
									点击可删除该策略组合。<br/>
									观察面板可查看私募云通所编制的策略指数（包括私募全市场指数、私募FOF指数、股票多头策略指数、股票多空策略指数、市场中性策略指数、债券基金策略指数、管理期货策略指数、宏观策略指数、事件驱动策略指数、相对价值策略指数、多策略指数、组合投资策略指数）以及沪深300的累计收益率。<br/>
									可自定义统计区间。<br/>
									用户可选择关注的指数，benchmark以及策略指数，查看其在时间序列上的相关性。目前最多支持选择六个指数。<br/><br/>
									（2）添加新的策略组合<br/>
									点击添加新的组合策略后，用户可设置新建策略名称、投资金额（万元）、benchmark，并选择2个以上策略作为配置的子策略。<br/>
									用户可选择全样本区间或内外样本区间，样本区间可自定义。<br/>
									用户可选择配置模型或自定义子策略权重。<br/>
									点击确定后，进行组合目标设定。用户可设置目标函数（年化夏普比最大、既定目标风险下，年化收益率最大，既定目标收益下，年化波动率最小），选择约束条件（年化收益率、年化波动率、无风险收益率、子基金权重）。<br/>
									用户可以对每个子策略设置配置权重上限及配置权重下限。<br/>
									可查看根据模型建议配置各子策略权重以及各子策略最大回撤、年化收益率、年化夏普比、年化波动率等业绩指标。<br/>
									可查看模拟策略组合的有效边界以及组合预期业绩指标（包括累计收益率、年化收益率、年化波动率、年化下行标准差、Sortino比率、年化夏普比、最大回撤、最大回撤发生时间、最大回撤形成期）。<br/>
									可查模拟策略组合的累计收益率曲线图、不同统计区间累计收益率与年化收益率对比图、动态回撤。<br/>
									点击确定即可在观测面板中看到该策略组合。<br/>
									</p>									
								</div>
								<div class="comb_mol" style="display:none">
									<p>
									（1）产品组合观测面板<br/>
									在观测面板中，用户可查看历史曾组合的产品组合的业绩表现、净资产、今日盈亏、持仓仓位。<br/>
									点击可设置预警条件或止损条件，可自定义统计区间，对净值、单个子基金规模权重、年化收益率、动态回撤、年化夏普比、年化波动率进行设置。<br/>
									点击可删除该产品组合。<br/><br/>
									（2）添加新的产品组合<br/>
									可在全市场范围设置多个筛选条件筛选出目标基金池。点击基金名称可查看单支基金的具体分析。<br/>
									可在用户上传的基金池（即自主管理）添加子基金。<br/>
									可在用户前期收藏过的基金产品（即我的收藏）添加子基金。<br/>
									点击基金名称前的即可添加该基金作为产品组合的子基金。<br/>
									所选择的子基金必须要有公共的净值区间。<br/>
									点击界面右下角组合，即可开始进行产品组合。<br/>
									用户可设置新建策略名称、投资金额（万元）、建仓比例、benchmark，用户可选择全样本区间或内外样本区间，样本区间可自定义。<br/>
									用户可选择配置模型或自定义子策略权重。<br/>
									点击确定后，进行组合目标设定。用户可设置目标函数（年化夏普比最大、既定目标风险下，年化收益率最大，既定目标收益下，年化波动率最小），选择约束条件（年化收益率、年化波动率、无风险收益率、子基金权重）。<br/>
									用户可以对每个子基金设置配置权重上限及配置权重下限。<br/>
									可查看根据模型建议配置各子基金权重以及各子基金最大回撤、年化收益率、年化夏普比、年化波动率等业绩指标。<br/>
									可查看模拟产品组合的有效边界以及组合预期业绩指标（包括累计收益率、年化收益率、年化波动率、年化下行标准差、Sortino比率、年化夏普比、最大回撤、最大回撤发生时间、最大回撤形成期）。<br/>
									可查模拟产品组合的累计收益率曲线图、不同统计区间累计收益率与年化收益率对比图、动态回撤。<br/>
									点击保存方案即可在观测面板中看到该产品组合。	<br/>
									</p>
								</div>
								
						 </div>		 
						</div>
					</div>
					
				</div>
				
			</div>
		</div>
					
				
	</section>
	<!-- 头部分结束 -->
	<%@ include file="/WEB-INF/views/include/common-js.jsp"%>
	<script>
		 require([ 'easy2/help/helpInfo' ]); 
	</script>
</body>
</html>