Add-Type -AssemblyName Microsoft.VisualBasic
Add-Type -AssemblyName System.speech
$User = [Microsoft.VisualBasic.Interaction]::InputBox('Enter a text here', 'User', "$env:UserName")

if ($User -ne $null){
#echo "Input was [$User]"
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speak.SetOutputToWaveFile("C:\Users\Administrator\Desktop\test.wav")
    $speak.selectvoice("Microsoft Hazel Desktop")
    $speak.Speak($User)
    $speak.Dispose()
}
