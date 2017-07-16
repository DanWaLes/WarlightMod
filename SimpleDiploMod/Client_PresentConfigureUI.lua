
function Client_PresentConfigureUI(rootParent)
	rootParentobj = rootParent;
	AIDeclerationinit = Mod.Settings.AllowAIDeclaration;
	if(AIDeclerationinit == nil)then
		AIDeclerationinit = true;
	end
	SeeAllyTerritoriesinit = Mod.Settings.SeeAllyTerritories;
	if(SeeAllyTerritoriesinit == nil)then
		SeeAllyTerritoriesinit = true;
	end
	PublicAlliesinit = Mod.Settings.PublicAllies;
	if(PublicAlliesinit == nil)then
		PublicAlliesinit = true;
	end
	StartMoneyinit = Mod.Settings.StartMoney;
	if(StartMoneyinit == nil)then
		StartMoneyinit = 100;
	end
	AIsdeclearAIsinit = Mod.Settings.AIsdeclearAIs;
	if(AIsdeclearAIsinit == nil)then
		AIsdeclearAIsinit = true;
	end
	MoneyPerTurninit = Mod.Settings.MoneyPerTurn;
	if(MoneyPerTurninit == nil)then
		MoneyPerTurninit = 5;
	end
	MoneyPerKilledArmyinit = Mod.Settings.MoneyPerKilledArmy;
	if(MoneyPerKilledArmyinit == nil)then
		MoneyPerKilledArmyinit = 1;
	end
	MoneyPerCapturedTerritoryinit = Mod.Settings.MoneyPerCapturedTerritory;
	if(MoneyPerCapturedTerritoryinit == nil)then
		MoneyPerCapturedTerritoryinit = 5;
	end
	MoneyPerCapturedBonusinit = Mod.Settings.MoneyPerCapturedBonus;
	if(MoneyPerCapturedBonusinit == nil)then
		MoneyPerCapturedBonusinit = 10;
	end
	SanctionCardRequireWarinit = Mod.Settings.SanctionCardRequireWar;
	if(SanctionCardRequireWarinit == nil)then
		SanctionCardRequireWarinit = true;
	end
	BombCardRequireWarinit = Mod.Settings.BombCardRequireWar;
	if(BombCardRequireWarinit == nil)then
		BombCardRequireWarinit = true;
	end
	MoneyPerBoughtArmyinit = Mod.Settings.MoneyPerBoughtArmy;
	if(MoneyPerBoughtArmyinit == nil)then
		MoneyPerBoughtArmyinit = 2;
	end
	Adminaccessinit = Mod.Settings.AdminAccess;
	if(Adminaccessinit == nil)then
		Adminaccessinit = true;
	end
	ShowUI();
end
function ShowUI()
	local texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('AI Settings');
   	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	AIDeclerationcheckbox = UI.CreateCheckBox(texthorz).SetText('Allow AIs to declare war on Player').SetIsChecked(AIDeclerationinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	AIsdeclearAIsinitcheckbox = UI.CreateCheckBox(texthorz).SetText('Allow AIs to declare war on AIs').SetIsChecked(AIsdeclearAIsinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText(' ');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Allianze Settings - this system will come in a later version, but that would be a bigger change, I added the settings for that already');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	SeeAllyTerritoriesCheckbox = UI.CreateCheckBox(texthorz).SetText('Allow Players to see the territories of their allies').SetIsChecked(SeeAllyTerritoriesinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	PublicAlliesCheckbox = UI.CreateCheckBox(texthorz).SetText('Allow everyone to see every ally').SetIsChecked(PublicAlliesinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText(' ');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Shop System');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateButton(texthorz).SetText('Change the settings, so that the shop is dissabled').SetOnClick(function() 
			inputStartMoney.SetValue(0);
			inputMoneyPerTurn.SetValue(0);
			inputMoneyPerKilledArmy.SetValue(0);
			inputMoneyPerCapturedTerritory.SetValue(0);
			inputMoneyPerCapturedBonus.SetValue(0);
		end);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateButton(texthorz).SetText('Change the settings, so that the shop is active').SetOnClick(function() 
			inputStartMoney.SetValue(100);
			inputMoneyPerTurn.SetValue(5);
			inputMoneyPerKilledArmy.SetValue(1);
			inputMoneyPerCapturedTerritory.SetValue(5);
			inputMoneyPerCapturedBonus.SetValue(10);
		end);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Starting Money');
	inputStartMoney = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(StartMoneyinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Money per turn');
	inputMoneyPerTurn = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(MoneyPerTurninit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Money per killed army');
	inputMoneyPerKilledArmy = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(MoneyPerKilledArmyinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Money per captured territory');
	inputMoneyPerCapturedTerritory = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(MoneyPerCapturedTerritoryinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Money per captured bonus');
	inputMoneyPerCapturedBonus = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(MoneyPerCapturedBonusinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Price per army');
	inputMoneyPerBoughtArmy = UI.CreateNumberInputField(texthorz).SetSliderMinValue(0).SetSliderMaxValue(100).SetValue(MoneyPerBoughtArmyinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText(' ');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Cards, that Require War');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputSanctionCardRequireWar = UI.CreateCheckBox(texthorz).SetText('Sanction Card').SetIsChecked(SanctionCardRequireWarinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputBombCardRequireWar = UI.CreateCheckBox(texthorz).SetText('Bomb Card').SetIsChecked(BombCardRequireWarinit);
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText(' ');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	UI.CreateLabel(texthorz).SetText('Other Settings');
	texthorz = UI.CreateHorizontalLayoutGroup(rootParentobj);
	inputAdminaccess = UI.CreateCheckBox(texthorz).SetText('Allow dabo1 to access and edit all data to identify and fix bugs runtime andfor other diagnostic functions').SetIsChecked(Adminaccessinit);
end
