<!--  upper content  -->
<div class="careHolderTop">
	<div class="careTop">
		<div class="careTopLeft"></div>
		<div class="careTopMiddle"></div>
		<div class="careTopRight"></div>
		<div class="unfloat"></div>
	</div>
	<div class="careMain">
        <table cellspacing="0" cellpadding="0" border="0">
            <tbody><tr>
                    <td class="careMainLeft"></td>
                    <td class="careMainMiddle">
                        <div class="careMainContentHolder">
                           	{if isset($user_data)}
                                    Welcome {$user_data}
                                {else}
                                    blabla
                                 {/if}
                        </div>
                    </td>
                    <td class="careMainRight"></td>
                </tr>
            </tbody>
        </table>
    </div>
	<div class="careBottom">
		<div class="careBottomLeft"></div>
		<div class="careBottomMiddle"></div>
		<div class="careBottomRight"></div>
		<div class="unfloat"></div>
	</div>
</div>
<!--  most popular news  -->
<div class="MainBodyContentHolder">
	<ul id="RssTableSortable" class="MainBodyRssDragDropCont">
		<li>
		    <div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">Спортал БГ</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_1" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_1">
											{$a3}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_1" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_1").jCarouselLite({
			        btnNext: "#next_1",
			        btnPrev: "#prev_1",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
		<li>
		    <div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">Dnes.Dir.bg</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_2" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_2">
							                {$a2}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_2" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_2").jCarouselLite({
			        btnNext: "#next_2",
			        btnPrev: "#prev_2",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
		<li>
			<div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">MobileBg</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_3" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_3">
							                 {$a1}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_3" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_3").jCarouselLite({
			        btnNext: "#next_3",
			        btnPrev: "#prev_3",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
		<li>
		    <div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">Спортал БГ</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_4" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_4">
											{$a3}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_4" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_4").jCarouselLite({
			        btnNext: "#next_4",
			        btnPrev: "#prev_4",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
		<li>
		    <div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">Dnes.Dir.bg</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_5" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_5">
							                {$a2}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_5" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_5").jCarouselLite({
			        btnNext: "#next_5",
			        btnPrev: "#prev_5",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
		<li>
			<div class="careHolderSection">
				<div class="careTop">
					<div class="careTopLeft"></div>
					<div class="careSectionMiddleTop"></div>
					<div class="careTopRight"></div>
					<div class="unfloat"></div>
				</div>
		        <div class="careMain">
					<table cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="careMainLeft"></td>
								<td class="careSectionMiddle">
									<div class="careMainContentHolder">
		            					<div class="careHead">
		            						<span class="draggable">MobileBg</span>
		            					</div>
							            <div class="slider-buttons">
							                <img id="next_6" class="next" src="./images/next.png" style="cursor: pointer;" alt="">
							            </div>
							            <div class="newsHolder" id="newsHolder_6">
							                 {$a1}
							            </div>
							            <div class="slider-buttons">
							                <img id="prev_6" class="prev" src="./images/prev.png" style="cursor: pointer;" alt="" />
							            </div>
									</div>
								</td>
								<td class="careMainRight"></td>
							</tr>
						</tbody>
					</table>
				</div>
		        <div class="careBottom">
					<div class="careBottomLeft"></div>
					<div class="careBottomSectionMiddle"></div>
					<div class="careBottomRight"></div>
					<div class="unfloat"></div>
				</div>
		    </div>
		    {literal}
			<script>
				$("#newsHolder_6").jCarouselLite({
			        btnNext: "#next_6",
			        btnPrev: "#prev_6",
			        vertical: true,
			        visible: 3,
			        speed:700
			    });
			</script>
			{/literal}
		</li>
	</ul>
	{literal}
	<script>
	$(function() {
    	$("#RssTableSortable").sortable({  
    		opacity: 0.7, 
			revert: true, 
       		scroll: true,
       		handle: $(".draggable") 
    	});  
	});
	</script>
	{/literal}
</div>
{include file='user/sign_up.tpl'}
