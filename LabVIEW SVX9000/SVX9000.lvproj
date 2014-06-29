<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SVX9000App.vi" Type="VI" URL="../SVX9000App.vi"/>
		<Item Name="SVX9000Basic.vi" Type="VI" URL="../SVX9000Basic.vi"/>
		<Item Name="SVX9000NIModbus.vi" Type="VI" URL="../SVX9000NIModbus.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Error to Warning.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error to Warning.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="MB Decode Data.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Decode Data.vi"/>
				<Item Name="MB Ethernet Master Query (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query (poly).vi"/>
				<Item Name="MB Ethernet Master Query Read Coils (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Read Coils (poly).vi"/>
				<Item Name="MB Ethernet Master Query Read Discrete Inputs (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Read Discrete Inputs (poly).vi"/>
				<Item Name="MB Ethernet Master Query Read Exception Status (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Read Exception Status (poly).vi"/>
				<Item Name="MB Ethernet Master Query Read Holding Registers (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Read Holding Registers (poly).vi"/>
				<Item Name="MB Ethernet Master Query Read Input Registers (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Read Input Registers (poly).vi"/>
				<Item Name="MB Ethernet Master Query Write Multiple Coils (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Write Multiple Coils (poly).vi"/>
				<Item Name="MB Ethernet Master Query Write Multiple Registers (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Write Multiple Registers (poly).vi"/>
				<Item Name="MB Ethernet Master Query Write Single Coil (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Write Single Coil (poly).vi"/>
				<Item Name="MB Ethernet Master Query Write Single Register (poly).vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query Write Single Register (poly).vi"/>
				<Item Name="MB Ethernet Master Query.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Master Query.vi"/>
				<Item Name="MB Ethernet Receive.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Receive.vi"/>
				<Item Name="MB Ethernet String to Modbus Data Unit.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet String to Modbus Data Unit.vi"/>
				<Item Name="MB Ethernet Transmit.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Ethernet Transmit.vi"/>
				<Item Name="MB Modbus Command to Data Unit.vi" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Modbus Command to Data Unit.vi"/>
				<Item Name="MB Modbus Command.ctl" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Modbus Command.ctl"/>
				<Item Name="MB Modbus Data Unit.ctl" Type="VI" URL="/&lt;vilib&gt;/NI Modbus.llb/MB Modbus Data Unit.ctl"/>
				<Item Name="ModBusVIEWoTCP.lvlib" Type="Library" URL="/&lt;vilib&gt;/SAPHIR/GModBus over TCP/ModBusVIEWoTCP.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="MBClose.vi" Type="VI" URL="../SVX9000MB.llb/MBClose.vi"/>
			<Item Name="MBInit.vi" Type="VI" URL="../SVX9000MB.llb/MBInit.vi"/>
			<Item Name="MBRdFreq.vi" Type="VI" URL="../SVX9000MB.llb/MBRdFreq.vi"/>
			<Item Name="MBWriteAna.vi" Type="VI" URL="../SVX9000MB.llb/MBWriteAna.vi"/>
			<Item Name="MBWriteBin.vi" Type="VI" URL="../SVX9000MB.llb/MBWriteBin.vi"/>
			<Item Name="NIMBCloseProfile.vi" Type="VI" URL="../SVX9000NIMB.llb/NIMBCloseProfile.vi"/>
			<Item Name="NIMBOpenProfile.vi" Type="VI" URL="../SVX9000NIMB.llb/NIMBOpenProfile.vi"/>
			<Item Name="NIMBRdFreq.vi" Type="VI" URL="../SVX9000NIMB.llb/NIMBRdFreq.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
