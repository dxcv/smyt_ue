<%-- 
	产品组合
 --%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
		<div id="showPrcdiv" class="comContent">
			<ul class="comPrcul">
			</ul>
			<div class="distanceTop">
				<div class="infoTitle">
					<div class="introducTitle"></div>
					<div class="titleTxt">
						<span class="pull-left">重大风控事项提醒</span>
					</div>
				</div>
				<table id='windControlWarningTab'></table>
			</div>
		</div>
		<div id="addNewprcdiv" style="display:none;">
			<!-- 导航栏 -->
			<div class="Select">
				<div id="slider">
					<ul id="assetUl" style="width: 440px;">
						<li data-type=1>私募</li>
						<li data-type=1>公募</li>
						<li data-type=1>自主管理</li>
						<li data-type=0>我的收藏</li>
						<li class="histolineActive"
							style="margin-left:-440px;margin-top:30px;"></li>
					</ul>
				</div>
				<div id="asseLine" style="width:440px;"></div>
			</div>
			<!-- 私募 -->
			<div class="prcDiv">
				<div class="table-responsive">
					<table class="table ulTable">
						<tr>
							<td><img src="${ctxResources}/images/check00.png">&nbsp;&nbsp;&nbsp;&nbsp;<span
								class="ultitleTxt">关键字：</span></td>
							<td colspan="2">
								<div id="maintblSearch" class="maintblSearch">
									<select id="search_choice_id" class="searchChoice">
										<option>基金产品</option>
										<option>投资顾问</option>
										<option>投资经理</option>
									</select> <input id="keywordSearch" type="text" name="keywordSearch"
										class="searchInp">
								</div>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check01.png"> <span
								class="ultitleTxt">统计区间：</span></td>
							<td colspan="2"><span id="total"
								class="selectTime choiceTime" style="margin-left: 10px;">成立以来</span>
								<span id="year" class="selectTime">今年以来</span> <span id="m3"
								class="selectTime">近三个月</span> <span id="m6" class="selectTime">近六个月</span>
								<span id="y1" class="selectTime">近一年</span> <span id="y3"
								class="selectTime">近三年</span> <span id="y5" class="selectTime">近五年</span>
								<!--  <span
											class="layui-input-inline" style="margin-left:20px;"><input
												class="form-control cdata" placeholder="开始日期"
												name="date_start1" readonly> </span><span
											style="margin:0 20px;">——</span><span class="layui-input-inline">
												<input class="form-control cdata" placeholder="结束日期"
												name="date_end1" readonly>
											</span> --></td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check01.png"> <span
								class="ultitleTxt">净值日期：</span></td>
							<td colspan="2"><span class="layui-input-inline"><input
									class="dateInp cdata" id="netInpleft" placeholder="开始日期"
									name="date_start1" readonly> </span><span
								style="margin:0 20px;">至</span><span class="layui-input-inline">
									<input class="dateInp cdata" id="netInpright"
									placeholder="结束日期" name="date_end1" readonly>
							</span></td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check02.png"> <span
								class="ultitleTxt">业绩指标：</span></td>
							<td colspan="2">
								<div class="indicatorsRange">
									<span class="indicatorsTitle" style="width:70px;">年化收益：</span>
									<input id="yearLowinp" class="percentInp" type="number" name="">
									% <span class="percentHr">至</span> <input id="yearHighinp"
										class="percentInp" type="number" name=""> %
								</div>
								<div class="indicatorsRange">
									<span class="indicatorsTitle">最大回撤：</span> <input
										id="withdrawalLow" class="percentInp" type="number" name="">
									% <span class="percentHr">至</span> <input id="withdrawalHigh"
										class="percentInp" type="number" name=""> %
								</div>
								<div class="indicatorsRange">
									<span class="indicatorsTitle">年化波动率：</span> <input
										id="fluctuationsLow" class="percentInp" type="number" name="">
									% <span class="percentHr">至</span> <input id="fluctuationsHigh"
										class="percentInp" type="number" name=""> %
								</div>
								<div class="indicatorsRange">
									<span class="indicatorsTitle">年化夏普比：</span> <input
										id="sharpThanLow" class="percentInp" type="number" name="">
									<span class="percentHr">至</span> <input id="sharpThanHigh"
										class="percentInp" type="number" name="">
								</div>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check04.png"> <span
								class="ultitleTxt">发行方式：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td id="releaseMode" class="ulContent">
								<button id="60402" class="checkboxBtn checkboxBtnshort"
									name="disMethod">自主发行</button>
								<button id="60404" class="checkboxBtn checkboxBtnshort"
									name="disMethod">券商资管</button>
								<button id="60405" class="checkboxBtn checkboxBtnshort"
									name="disMethod">期货资管</button>
								<button id="60401" class="checkboxBtn checkboxBtnshort"
									name="disMethod">信托计划</button>
								<button id="60403" class="checkboxBtn checkboxBtnlong"
									name="disMethod">公募专户及子公司管理计划</button>
								<button id="60406" class="checkboxBtn checkboxBtnlong"
									name="disMethod">保险公司及子公司管理计划</button>
								<button id="60408" class="checkboxBtn checkboxBtnshort"
									name="disMethod">有限合伙</button>
								<button id="60409" class="checkboxBtn checkboxBtnshort"
									name="disMethod">单账户</button>
								<button id="60407" class="checkboxBtn checkboxBtnshort"
									name="disMethod">海外基金</button>
								<button id="60410" class="checkboxBtn checkboxBtnshort"
									name="disMethod">其他</button>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check05.png"> <span
								class="ultitleTxt">投资标的：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td id="investmentTarget" class="ulContent">
								<button id="60301" class="checkboxBtn checkboxBtnshort"
									name="disMethod">股票</button>
								<button id="60303" class="checkboxBtn checkboxBtnlong"
									name="disMethod">债券等固定收益</button>
								<button id="60307" class="checkboxBtn checkboxBtnshort"
									name="disMethod">货币型</button>
								<button id="60302" class="checkboxBtn checkboxBtnshort"
									name="disMethod">期货</button>
								<button id="60304" class="checkboxBtn checkboxBtnshort"
									name="disMethod">期权</button>
								<button id="60308" class="checkboxBtn checkboxBtnshort"
									name="disMethod">指数型</button>
								<button id="60311" class="checkboxBtn checkboxBtnshort"
									name="disMethod">混合型</button>
								<button id="60309" class="checkboxBtn checkboxBtnshort"
									name="disMethod">股权</button>
								<button id="60310" class="checkboxBtn checkboxBtnshort"
									name="disMethod">新三板</button>
								<button id="60306" class="checkboxBtn checkboxBtnshort"
									name="disMethod">海外资产</button>
								<button id="60312" class="checkboxBtn checkboxBtnshort"
									name="disMethod">其他</button>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check06.png"> <span
								class="ultitleTxt">投资策略：</span></td>
							<td><span id="secMulslebtn" class="openEnded">不限</span></td>
							<td colspan="2" class="ulContent" id="investmentStrategy">
								<button id="60101" class="checkboxBtn checkboxBtnshort"
									name="disMethod">股票策略</button>
								<button id="60102" class="checkboxBtn checkboxBtnshort"
									name="disMethod">管理期货</button>
								<button id="60103" class="checkboxBtn checkboxBtnshort"
									name="disMethod">相对价值</button>
								<button id="60104" class="checkboxBtn checkboxBtnshort"
									name="disMethod">事件驱动</button> <img class="dropdownImg"
								id="dropdownImg" src="${ctxResources}/images/mainxiala.png">
								<button id="60105" class="checkboxBtn checkboxBtnshort"
									name="disMethod">债券策略</button>
								<button id="60106" class="checkboxBtn checkboxBtnshort"
									name="disMethod">宏观策略</button>
								<button id="60107" class="checkboxBtn checkboxBtnshort"
									name="disMethod">组合策略</button>
								<button id="60108" class="checkboxBtn checkboxBtnshort"
									name="disMethod">多策略</button>
								<button id="60109" class="checkboxBtn checkboxBtnlong"
									name="disMethod">其他一级策略</button>
							</td>
						</tr>
						<!-- 投资策略详情 -->
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="stockStrategy">
								<div class="detaiTitle">
									<span>股票策略：</span>
								</div>
								<div class="checkBlock">
									<input id="6010101" type="checkbox" name="secMulscn" disabled>
									<label for="6010101">股票多头</label>
								</div>
								<div class="checkBlock">
									<input id="6010102" type="checkbox" name="secMulscn" disabled>
									<label for="6010102">股票多空</label>
								</div>
								<div class="checkBlock">
									<input id="6010103" type="checkbox" name="secMulscn" disabled>
									<label for="6010103">市场中性</label>
								</div>
							</td>
						</tr>
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="managingFutures">
								<div class="detaiTitle">
									<span>管理期货：</span>
								</div>
								<div class="checkBlock">
									<input id="6010201" type="checkbox" name="secMulscn" disabled>
									<label for="6010201">期货趋势策略</label>
								</div>
								<div class="checkBlock">
									<input id="6010202" type="checkbox" name="secMulscn" disabled>
									<label for="6010202">期货套利策略</label>
								</div>
								<div class="checkBlock">
									<input id="6010203" type="checkbox" name="secMulscn" disabled>
									<label for="6010203">其他管理期货策略</label>
								</div>
							</td>
						</tr>
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="relativeValue">
								<div class="detaiTitle">
									<span>相对价值：</span>
								</div>
								<div class="checkBlock">
									<input id="6010301" type="checkbox" name="secMulscn" disabled>
									<label for="6010301">ETF套利</label>
								</div>
								<div class="checkBlock">
									<input id="6010302" type="checkbox" name="secMulscn" disabled>
									<label for="6010302">可转债套利</label>
								</div>
								<div class="checkBlock">
									<input id="6010303" type="checkbox" name="secMulscn" disabled>
									<label for="6010303">固定收益套利</label>
								</div>
								<div class="checkBlock">
									<input id="6010304" type="checkbox" name="secMulscn" disabled>
									<label for="6010304">分级基金套利</label>
								</div>
								<div class="checkBlock">
									<input id="6010305" type="checkbox" name="secMulscn" disabled>
									<label for="6010305">其他相对价值策略</label>
								</div>
								<div class="checkBlock">
									<input id="6010306" type="checkbox" name="secMulscn" disabled>
									<label for="6010306">期权套利</label>
								</div>
							</td>
						</tr>
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="eventDriven">
								<div class="detaiTitle">
									<span>事件驱动：</span>
								</div>
								<div class="checkBlock">
									<input id="6010401" type="checkbox" name="secMulscn" disabled>
									<label for="6010401">并购重组</label>
								</div>
								<div class="checkBlock">
									<input id="6010402" type="checkbox" name="secMulscn" disabled>
									<label for="6010402">定向增发</label>
								</div>
								<div class="checkBlock">
									<input id="6010403" type="checkbox" name="secMulscn" disabled>
									<label for="6010403">大宗交易</label>
								</div>
								<div class="checkBlock">
									<input id="6010404" type="checkbox" name="secMulscn" disabled>
									<label for="6010404">其他事件驱动策略</label>
								</div>
							</td>
						</tr>
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="combiningPolicy">
								<div class="detaiTitle">
									<span>组合策略：</span>
								</div>
								<div class="checkBlock">
									<input id="6010701" type="checkbox" name="secMulscn" disabled>
									<label for="6010701">MOM</label>
								</div>
								<div class="checkBlock">
									<input id="6010702" type="checkbox" name="secMulscn" disabled>
									<label for="6010702">FOF</label>
								</div>
								<div class="checkBlock">
									<input id="6010703" type="checkbox" name="secMulscn" disabled>
									<label for="6010703">TOT</label>
								</div>
								<div class="checkBlock">
									<input id="6010704" type="checkbox" name="secMulscn" disabled>
									<label for="6010704">其他组合策略</label>
								</div>
							</td>
						</tr>
						<tr class="ivnstrategyDetail">
							<td colspan="3" class="ivnDetailtd" id="otherPolicy">
								<div class="detaiTitle">
									<span>其他一级策略：</span>
								</div>
								<div class="checkBlock">
									<input id="6010902" type="checkbox" name="secMulscn" disabled>
									<label for="6010902">新三板</label>
								</div>
								<div class="checkBlock">
									<input id="6010903" type="checkbox" name="secMulscn" disabled>
									<label for="6010903">海外基金</label>
								</div>
								<div class="checkBlock">
									<input id="6010904" type="checkbox" name="secMulscn" disabled>
									<label for="6010904">货币基金</label> <img id="pullupImg"
										src="${ctxResources}/images/mainshangla.png" alt="">
								</div>
								<div class="checkBlock">
									<input id="6010901" type="checkbox" name="secMulscn" disabled>
									<label for="6010901">其他二级策略</label>
								</div>
							</td>
						</tr>
						<!--投资策略详情结束  -->
						<tr>
							<td><img src="${ctxResources}/images/check07.png"> <span
								class="ultitleTxt">结构形式：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td class="ulContent" id="structureForm">
								<button id="60202" class="checkboxBtn checkboxBtnshort"
									name="disMethod">结构化</button>
								<button id="60201" class="checkboxBtn checkboxBtnshort"
									name="disMethod">非结构化</button>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check08.png"> <span
								class="ultitleTxt">基金状态：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td class="ulContent" id="fundStatus">
								<button id="运行中" class="checkboxBtn checkboxBtnshort"
									name="disMethod">运行中</button>
								<button id="终止" class="checkboxBtn checkboxBtnshort"
									name="disMethod">已清盘</button>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check09.png"> <span
								class="ultitleTxt">成立年限：</span></td>
							<td><span class="openEnded" id="establishedYears">不限</span></td>
							<td class="ulContent" id="foundationYears">
								<button id="1" class="checkboxBtn checkboxBtnshort"
									name="disMethod">1年以下</button>
								<button id="2" class="checkboxBtn checkboxBtnshort"
									name="disMethod">1-3年</button>
								<button id="3" class="checkboxBtn checkboxBtnshort"
									name="disMethod">3-5年</button>
								<button id="4" class="checkboxBtn checkboxBtnshort"
									name="disMethod">5年以上</button> <span style="margin-left: 30px;">自定义:</span>
								<span class="layui-input-inline" style="margin-left: 10px;">
									<input class="dateInp cdata" placeholder="开始日期"
									name="foundation_date_start" id="foundation_date_start"
									readonly>
							</span><span style="margin: 0 20px;">至</span><span
								class="layui-input-inline"> <input class="dateInp cdata"
									placeholder="结束日期" name="foundation_date_end"
									id="foundation_date_end" readonly>

							</span>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check10.png"> <span
								class="ultitleTxt">发行地区：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td class="ulContent" id="region">
								<button id="上海" class="checkboxBtn checkboxBtnshort"
									name="disMethod">上海</button>
								<button id="广东" class="checkboxBtn checkboxBtnshort"
									name="disMethod">广东</button>
								<button id="深圳" class="checkboxBtn checkboxBtnshort"
									name="disMethod">深圳</button>
								<button id="北京" class="checkboxBtn checkboxBtnshort"
									name="disMethod">北京</button>
								<button id="其它" class="checkboxBtn checkboxBtnshort"
									name="disMethod">其它</button>
							</td>
						</tr>
						<tr>
							<td><img src="${ctxResources}/images/check11.png"> <span
								class="ultitleTxt">披露频率：</span></td>
							<td><span class="openEnded">不限</span></td>
							<td class="ulContent" id="data_freq">
								<button id="周度" class="checkboxBtn checkboxBtnshort"
									name="disMethod">周频</button>
								<button id="月度" class="checkboxBtn checkboxBtnshort"
									name="disMethod">月频</button>
								<button id="日度" class="checkboxBtn checkboxBtnshort"
									name="disMethod">日频</button>
							</td>
						</tr>
						<tr>
							<td colspan="3" style="width: 98%;">
								<button id="maindetermineBtn" class="easy2Btn">
									<span>确定</span>
								</button>
								<button id="mainemptyBtn" class="easy2Btn">
									<span>清空</span>
								</button>
							</td>
						</tr>
					</table>
					<div id="november">
						<table class="mainTbl" id="main-grid" data-toggle="main-grid" data-id-field="id" data-show-columns="true">
						</table>
					</div>
				</div>
			</div>
			<!-- 公募 -->
			<div id="public" class="prcDiv" style="display: none;">
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table ulTable">
								<tr>
									<td><img src="${ctxResources}/images/check00.png"><span
											class="ultitleTxt">关键字：</span></td>
									<td colspan="2">
										<input type="text" id="keywords" style="width:30%;height:28px;line-height: 28px;border: 1px solid #ddd;";>
									</td>
								</tr>
								<tr>
									<td>
										<img src="${ctxResources}/images/check01.png">
										<span class="ultitleTxt">统计区间：</span>
									</td>
									<td colspan="2" id="pub_statistical" data-id="default_range">
										<span data-id="total" class="selectTime choiceTime" style="margin-left: 10px;">成立以来</span>
										<span data-id="year" class="selectTime">今年以来</span>
										<span data-id="m3" class="selectTime">近三月</span>
										<span data-id="m6" class="selectTime">近六月</span>
										<span data-id="y1" class="selectTime">近一年</span>
										<span data-id="y3" class="selectTime">近三年</span>
										<span data-id="y5" class="selectTime">近五年</span>
									</td>
								</tr>
								<tr>
									<td><img src="${ctxResources}/images/check02.png"> <span
											class="ultitleTxt">业绩指标：</span></td>
									<td colspan="2" id="pubPerformance">
										<div class="indicatorsRange">
											<span class="indicatorsTitle">年化收益：</span>
											<input id="yearLowinp2" data-id="yearReturnLeft" class="percentInp" type="number" name="">%
											<span class="percentHr">至</span>
											<input id="yearHighinp2" data-id="yearReturnRight" class="percentInp" type="number" name=""> %
										</div>
										<div class="indicatorsRange">
											<span class="indicatorsTitle">最大回撤：</span>
											<input id="withdrawalLow2" data-id="maxRetracementLeft" class="percentInp" type="number" name="">
											% <span class="percentHr">至</span>
											<input id="withdrawalHigh2" data-id="maxRetracementRight" class="percentInp" type="number" name=""> %
										</div>
										<div class="indicatorsRange">
											<span class="indicatorsTitle" style="width:90px;">年化波动率：</span>
											<input id="fluctuationsLow2" data-id="fluctuationsLeft" class="percentInp" type="number" name=""> %
											<span class="percentHr">至</span>
											<input id="fluctuationsHigh2" data-id="fluctuationsRight" class="percentInp" type="number" name="">
											%
										</div>
										<div class="indicatorsRange">
											<span class="indicatorsTitle" style="width:90px;">年化夏普比：</span>
											<input id="sharpThanLow2" data-id="sharpThanLeft" class="percentInp" type="number" name="">
											<span class="percentHr">至</span>
											<input id="sharpThanHigh2" data-id="sharpThanRight" class="percentInp" type="number" name="">
										</div>
									</td>
								</tr>
								<tr>
									<td><img src="${ctxResources}/images/check04.png"> <span
											class="ultitleTxt">运行方式：</span></td>
									<td><span class="openEnded endActiv">不限</span></td>
									<td class="ulContent" data-id="operation_mode">
										<button data-id="0101" class="checkboxBtn checkboxBtnshort"
												name="disMethod">封闭式</button>
										<button data-id="0102" class="checkboxBtn checkboxBtnshort"
												name="disMethod">开放式</button>
									</td>
								</tr>
								<tr>
									<td><img src="${ctxResources}/images/check05.png"> <span
											class="ultitleTxt">投资方式：</span></td>
									<td><span class="openEnded endActiv">不限</span></td>
									<td data-id="investment_mode" class="ulContent">
										<div data-id="investment_mode" style="display: inline-block;">
											<button data-id="0401" class="checkboxBtn checkboxBtnshort" name="disMethod">主动型</button>
										</div>
										<div data-id="investment_smode" style="display: inline-block;">
											<button data-id="040201" class="checkboxBtn checkboxBtnshort" name="disMethod">被动指数型</button>
											<button data-id="040202" class="checkboxBtn checkboxBtnshort" name="disMethod">指数增强型</button>
										</div>
									</td>
								</tr>
								<tr>
									<td><img src="${ctxResources}/images/check06.png"> <span
											class="ultitleTxt">基金类型：</span></td>
									<td><span class="openEnded endActiv unlimit">不限</span></td>
									<td colspan="2" data-id="fund_type" class="ulContent">
										<button data-id="0201" class="checkboxBtn checkboxBtnshort"
												name="disMethod">股票型</button>
										<button id="0202" data-id="0202" class="hasSec checkboxBtn checkboxBtnshort"
												name="disMethod">债券型</button>
										<button id="0203" data-id="0203" class="hasSec checkboxBtn checkboxBtnshort"
												name="disMethod">混合型</button>
										<button id="0204" data-id="0204" class="checkboxBtn checkboxBtnshort"
												name="disMethod">货币型</button>
										<img id="publicDown" class="dropdownImg" src="${ctxResources}/images/mainxiala.png">
										<button id="0205" data-id="0205" class="hasSec checkboxBtn checkboxBtnshort"
												name="disMethod">QDII基金</button>
										<button id="0299" data-id="0299" class="hasSec checkboxBtn checkboxBtnshort"
												name="disMethod">其他基金</button>
									</td>
								</tr>
								<!-- 基金类型详情 -->
								<tr class="publicDetail">
									<td colspan="3" class="ivnDetailtd 0202" data-id="0202">
										<div class="detaiTitle">
											<span>债券型：</span>
										</div>
										<div class="checkBlock">
											<input id="020201" data-id="020201" type="checkbox" name="secMulscn">
											<label for="020201">纯债型</label>
										</div>
										<div class="checkBlock">
											<input id="020202" data-id="020202" type="checkbox" name="secMulscn">
											<label for="020202">混合债券型</label>
										</div>
									</td>
								</tr>
								<tr class="publicDetail">
									<td colspan="3" class="ivnDetailtd 0203" data-id="0203">
										<div class="detaiTitle">
											<span>混合型：</span>
										</div>
										<div class="checkBlock">
											<input id="020301" data-id="020301" type="checkbox" name="secMulscn">
											<label for="020301">偏股混合型</label>
										</div>
										<div class="checkBlock">
											<input id="020302" data-id="020302" type="checkbox" name="secMulscn">
											<label for="020302">偏债混合型</label>
										</div>
										<div class="checkBlock">
											<input id="020303" data-id="020303" type="checkbox" name="secMulscn">
											<label for="020303">平衡混合型</label>
										</div>
										<div class="checkBlock">
											<input id="020304" data-id="020304" type="checkbox" name="secMulscn">
											<label for="020304">灵活配置型</label>
										</div>
										<div class="checkBlock">
											<input id="020305" data-id="020305" type="checkbox"  name="secMulscn">
											<label for="020305">FOF</label>
										</div>
										<div class="checkBlock">
											<input id="020399" data-id="020399" type="checkbox" name="secMulscn">
											<label for="020399">其他混合型</label>
										</div>
									</td>
								</tr>
								<tr class="publicDetail">
									<td colspan="3" class="ivnDetailtd 0205"  data-id="0205">
										<div class="detaiTitle">
											<span>QDII基金：</span>
										</div>
										<div class="checkBlock">
											<input id="020501" data-id="020501" type="checkbox" name="secMulscn">
											<label for="020501">QDII股票型</label>
										</div>
										<div class="checkBlock">
											<input id="020502" data-id="020502" type="checkbox" name="secMulscn">
											<label for="020502">QDII混合型</label>
										</div>
										<div class="checkBlock">
											<input id="020503" data-id="020503" type="checkbox" name="secMulscn">
											<label for="020503">QDII债券型</label>
										</div>
										<div class="checkBlock">
											<input id="020504" data-id="020504" type="checkbox" name="secMulscn">
											<label for="020504">QDII另类投资基金</label>
										</div>
										<%--<div class="checkBlock">--%>
										<%--<input id="020505" data-id="020505" type="checkbox" name="secMulscn">--%>
										<%--<label for="020505">其他基金</label>--%>
										<%--</div>--%>
									</td>
								</tr>
								<tr class="publicDetail">
									<td colspan="3" class="ivnDetailtd 0299" data-id="0299">
										<div class="detaiTitle">
											<span>其他基金：</span>
										</div>
										<div class="checkBlock">
											<input id="029901" data-id="029901" type="checkbox" name="secMulscn">
											<label for="029901">商品型基金</label>
										</div>
										<div class="checkBlock">
											<input id="029902" data-id="029902" type="checkbox" name="secMulscn">
											<label for="029902">REITS</label>
										</div>
										<div class="checkBlock">
											<input id="029903" data-id="029903" type="checkbox" name="secMulscn">
											<label for="029903">另类投资基金</label>
										</div>
										<div class="checkBlock">
											<input id="029904" data-id="029904" type="checkbox" name="secMulscn">
											<label for="029904">其他基金</label>
										</div>
									</td>
								</tr>
								<!--投资策略详情结束  -->
								<tr  id="tabLine2">
									<td><img src="${ctxResources}/images/check08.png"> <span
											class="ultitleTxt">基金状态：</span></td>
									<td><span class="openEnded endActiv">不限</span></td>
									<td class="ulContent" data-id="fund_status">
										<button data-id="run" class="checkboxBtn radioBtn checkboxBtnshort"
												name="disMethod">运行中</button>
										<button data-id="stop" class="checkboxBtn radioBtn checkboxBtnshort"
												name="disMethod">已清盘</button>
										<img id="publicUp" src="/resources/images/mainshangla.png" alt="">
									</td>
								</tr>
								<tr>
									<td><img src="${ctxResources}/images/check09.png"> <span
											class="ultitleTxt">成立年限：</span></td>
									<td><span class="openEnded endActiv" data-id="">不限</span></td>
									<td class="ulContent" data-id="foundations">
										<button data-id="y1" class="checkboxBtn checkboxBtnshort"
												name="disMethod">1年以下</button>
										<button data-id="y1y3" class="checkboxBtn checkboxBtnshort"
												name="disMethod">1-3年</button>
										<button data-id="y3y5" class="checkboxBtn checkboxBtnshort"
												name="disMethod">3-5年</button>
										<button data-id="y5" class="checkboxBtn checkboxBtnshort"
												name="disMethod">5年以上</button> <span style="margin-left: 30px;">自定义:</span>
										<span class="layui-input-inline" style="margin-left: 10px;">
									<input class="dateInp cdata" placeholder="开始日期" name="foundation_date_start" id="foundation_date_start2" readonly>
								</span>
										<span style="margin: 0 20px;">至</span>
										<span class="layui-input-inline">
									<input class="dateInp cdata" placeholder="结束日期" name="foundation_date_end" id="foundation_date_end2" readonly>
								</span>
									</td>
								</tr>
								<tr>
									<td colspan="3" style="width: 98%;">
										<button id="pubconfirmBtn" class="easy2Btn anchor" data-id="tabLine2">
											<span>确定</span>
										</button>
										<button id="pubClear" class="easy2Btn">
											<span>清空</span>
										</button>
									</td>
								</tr>
							</table>
						</div>
						<div id="proTab2">
							<table class="mainTbl" id="main-grid2" data-toggle="main-grid" data-id-field="id" data-show-columns="true">
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- 自主管理 -->
			<div class="prcDiv" style="display:none;">
				<table class="mainTbl table independMaintbl" id="listFuntTab"></table>
			</div>
			<!-- 我的收藏 -->
			<div class="prcDiv" style="display:none;">
				<div style="margin-top: 20px;">
					<table class="mainTbl table" id="collection-grid"></table>
				</div>
			</div>

			<!-- 产品组合列表 -->
			<div id="productComparison">
				<div class="contrastTitle">
					<span>产品组合</span><img id="prcDelect"
						src="${ctxResources}/images/hideContrast.png">
				</div>
				<div class="contrastContent">
					<div class="combinatContent">
					
					</div>
					<div class="contrastBtndiv">
						<button id="prcComparbtn">组合</button>
						<button id="prcbtnClean">清空产品</button>
					</div>
				</div>
			</div>
			<input type="hidden" id="product_list" name="PID" value="01/01/70" />
			<div id="SuspensionDiv">
				<div class="Contrast">
					<span>组合</span>
					<div id="cntCount">0</div>
				</div>
			</div>
			
		</div>
<!-- 模态框（Modal） -->
				<div class="modal fade" id="SetUpAlerts" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" style="margin-top:5%;width:55%;min-width:800px;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;
									</button>
								<h4 class="modal-title" style="font-size:18px;">
										设置预警
									</h4>
							</div>
							<div class="modal-body">
								
								<!-- 预警设定 -->
								<div class="alertSet">
									<form id = 'setUpAlertsForm'>
									<input name='user_id' type="hidden" value=''>
									<input name='fund_id' type="hidden" value=''>
									<input name='freq_length' type="hidden" value='m6'>
									<!-- <div class="Select" style="display:inline-block;">
										<div id="slider" style="margin-left: 40px;">
											<ul id="historyUl">
												<li id="motherName">母基金</li>
												<li class='Sub-fund hidden'>子基金</li>
												<li style="margin-top: 30px;margin-left:-220px;" class="histolineActive" id="histolineActive"></li>
											</ul><br>
										</div>
										<div id="hitoryLine" style="width: 220px;"></div>
									</div> -->
									<div class="fundDiv">
										<div class='subFundList hidden'>
										<span style="margin-left: 45px;">子基金：</span>
										<div class='' style="display:inline-block;">
												<select id='fund_id1' class='form-control' style='width: 100px'>
													
												</select>
										</div>
										</div>
										<div class="radioDiv">
											
											<div>
												<input id="malertCondit" type="radio" name="alert_type" value="0" checked="checked">
												<label for="malertCondit">预警条件</label>
											</div>
											<div>
												<input id="mstopCondition" type="radio" name="alert_type" value="1">
												<label for="mstopCondition">止损条件</label>
											</div>
										</div>
										<div style="padding-left:105px;">
									<span>统计区间</span>
									<div class="statisticalInterval" style="margin-left:10px;">
										<input id = "freq_star" style="text-align: right;" class="form_date" size="16" type="text"  placeholder="开始日期" readonly>&nbsp;&nbsp;--&nbsp;&nbsp;
										<input id = "freq_end" class="form_date" size="16" type="text"  placeholder="截止日期" readonly>
									</div>
								</div>
								<div class="valueDiv">
									<div>
										<span>净值</span>
													<div class="inputDiv">
														<select class="pull-left" name='nav_notation'>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
														</select>
														<input type="text" name="nav">
													</div>
												</div>
												<div class= 'Sub-fund hidden'><span>单个子基金规模权重（%）</span>
													<div class="inputDiv">
														<select class="pull-left  " name='weight_notation'>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
														</select>
														<input class=' ' type="text" name="weight">
													</div>
												</div>
										</div>
										<hr class='pull-left distanceTop20' style="width: 90%">
										<div class="valueDiv">
											<div style="width:100%;">
												<div id="Frequency" style="width:100%;text-align:left;margin-top:0px;">
													<ul class="freSlcul" style="float:none;margin-left:50px;min-width:580">
														<li style="border:none;width:80px;padding-top:10px;text-align: left;"><span>统计区间</span></li>
														<!-- <li><button type="button" data-val='m3' class="m3 slcliBtn">3M</button></li> -->
														<li><button type="button" data-val='m3' class="m3 slcliBtn">3M</button></li>
														<li><button type="button" data-val='m6' class="m6 slcliBtn">6M</button></li>
														<li><button type="button" data-val='y1' class="y1 slcliBtn">1Y</button></li>
														<li><button type="button" data-val='y2' class="y2 slcliBtn">2Y</button></li>
														<li><button type="button" data-val='y3' class="y3 slcliBtn">3Y</button></li>
														<li><button type="button" data-val='y5' class="y5 slcliBtn">5Y</button></li>
														<!-- <li><button type="button" data-val='total' class="total slcliBtn">成立以来</button></li> -->
													</ul>
												</div>
											</div>
											<div><span>年化收益率（%）</span>
												<div class="inputDiv">
													<select class="pull-left" name='return_a_notation'>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
														</select>
														<input type="text" name="return_a">
												</div>
											</div>
											<div><span>动态回撤（%）</span>
												<div class="inputDiv">
													<select class="pull-left" name='max_retracement_notation'>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
														</select>
														<input type="text" name="max_retracement">
												</div>
											</div>
											<div><span>年化夏普比</span>
												<div class="inputDiv">
													<select class="pull-left" name='sharp_a_notation'>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
														</select>
														<input type="text" name="sharp_a">
												</div>
											</div>
											<div><span>年化波动率（%）</span>
												<div class="inputDiv">
													<select class="pull-left" name='std_a_notation'>
															<option value="more_than_or_equal_to">>=</option>
															<option value="more_than">></option>
															<option value="less_than_or_equal_to"><=</option>
															<option value="less_than"><</option>
														</select>
														<input type="text" name="std_a">
												</div>
											</div>

										</div>
									</div>
									</form>
								</div>
								<div class="modal-footer" style="border:none;">
									<div class="distanceTop20 confirmPrcdiv" style="float:none;">
										<button id = "subBtn" disabled='disabled'>确定</button>
										<button  type="reset">重置</button>
										<button data-dismiss="modal">取消</button>
									</div>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>
				</div>