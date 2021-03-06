# Give your custom topic a unique name
$myTopic = "demoContosoTopic"

# Create resource group
New-AzureRmResourceGroup -Name myResourceGroup -Location westus2

# Create custom topic
New-AzureRmEventGridTopic -ResourceGroupName myResourceGroup -Location westus2 -Name $myTopic

# Retrieve endpoint and key to use when publishing to the topic
$endpoint = (Get-AzureRmEventGridTopic -ResourceGroupName myResourceGroup -Name $myTopic).Endpoint
$key = (Get-AzureRmEventGridTopicKey -ResourceGroupName myResourceGroup3 -Name $myTopic).Key1

$endpoint
$key