##############################################################################################################################################################################################
##############################################################################################################################################################################################
####### GUI FOR >>YOUTUBE-DL<< MADE BY WhATaPlaYer | Version 1.0.0 | OPEN SOURCE/LICENSE [CC BY-SA-NC] #######################################################################################
##############################################################################################################################################################################################
##############################################################################################################################################################################################

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

[System.Windows.Forms.Application]::EnableVisualStyles() #ButtonStyle

#Add-Type -AssemblyName System.Windows.Forms
#Add-Type -AssemblyName System.Drawing

#[void] $window1_NET.ShowDialog()

$window1_NET = New-Object System.Windows.Forms.Form
$window1_NET.Text = 'Ultimate YouTube Downloader | By WhATaPlaYer'
$window1_NET.Icon = "$HOME\Desktop\YT-DL\configs\iconYT.ico"
$window1_NET.Size = New-Object System.Drawing.Size(1280,620)
$window1_NET.StartPosition = 'CenterScreen'

$okButton = New-Object System.Windows.Forms.Button
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 190
$System_Drawing_Point.Y = 350
$okButton.Location = $System_Drawing_Point
$okButton.Size = New-Object System.Drawing.Size(300,60)
$okButton.Text = 'Download'
#$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
#$window1_NET.AcceptButton = $okButton

$okButton.add_Click({
if($checkBoxPlay.Checked)
{
    if(($comboBox1.SelectedItem -match 'Video Format') -and ($comboBox2.SelectedIndex -ne -1) -and ($textBox.Text -ne ''))
    {
         $xValueTxt = $textBox.Text
         $xValueForm = $comboBox2.SelectedItem
         Start-Process -FilePath $HOME\Desktop\YT-DL\youtube-dl.exe -ArgumentList '--recode-video ',$xValueForm,' --yes-playlist ',$xValueTxt -NoNewWindow #-Wait
    }
    elseif(($comboBox1.SelectedItem -match 'Audio Format') -and ($comboBox2.SelectedIndex -ne -1) -and ($textBox.Text -ne ''))
    {
         $xValueTxt = $textBox.Text
         $xValueForm = $comboBox2.SelectedItem
         Start-Process -FilePath $HOME\Desktop\YT-DL\youtube-dl.exe -ArgumentList '-x --audio-format ',$xValueForm,' --yes-playlist ',$xValueTxt -NoNewWindow #-Wait
    }
    elseif((($comboBox1.SelectedIndex -eq -1) -or ($comboBox2.SelectedIndex -eq -1)) -and ($textBox.Text -eq ''))
    {
         [System.Windows.Forms.MessageBox]::Show("Bitte füge einen Link ein!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
    elseif((($comboBox1.SelectedIndex -ne -1) -or ($comboBox2.SelectedIndex -ne -1)) -and ($textBox.Text -eq ''))
    {
         [System.Windows.Forms.MessageBox]::Show("Bitte füge einen Link ein!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
    else
    {    
         [System.Windows.Forms.MessageBox]::Show("Wählen Sie ein Format!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
}
else
{
    if(($comboBox1.SelectedItem -match 'Video Format') -and ($comboBox2.SelectedIndex -ne -1) -and ($textBox.Text -ne ''))
    {
         $xValueTxt = $textBox.Text
         $xValueForm = $comboBox2.SelectedItem
         Start-Process -FilePath $HOME\Desktop\YT-DL\youtube-dl.exe -ArgumentList '--recode-video ',$xValueForm,' --no-playlist ',$xValueTxt -NoNewWindow #-Wait
    }
    elseif(($comboBox1.SelectedItem -match 'Audio Format') -and ($comboBox2.SelectedIndex -ne -1) -and ($textBox.Text -ne ''))
    {
         $xValueTxt = $textBox.Text
         $xValueForm = $comboBox2.SelectedItem
         Start-Process -FilePath $HOME\Desktop\YT-DL\youtube-dl.exe -ArgumentList '-x --audio-format ',$xValueForm,' --no-playlist ',$xValueTxt -NoNewWindow #-Wait
    }
    elseif((($comboBox1.SelectedIndex -eq -1) -or ($comboBox2.SelectedIndex -eq -1)) -and ($textBox.Text -eq ''))
    {
         [System.Windows.Forms.MessageBox]::Show("Bitte füge einen Link ein!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
    elseif((($comboBox1.SelectedIndex -ne -1) -or ($comboBox2.SelectedIndex -ne -1)) -and ($textBox.Text -eq ''))
    {
         [System.Windows.Forms.MessageBox]::Show("Bitte füge einen Link ein!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
    else
    {    
         [System.Windows.Forms.MessageBox]::Show("Wählen Sie ein Format!","ERROR",0,[System.Windows.Forms.MessageBoxIcon]::Information)
    }
}
})
$okButton.Font = New-Object System.Drawing.Font("",18,[System.Drawing.FontStyle]::Bold)
$window1_NET.Controls.Add($okButton)

#$cancelButton = New-Object System.Windows.Forms.Button
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 300
#$System_Drawing_Point.Y = 950
#$cancelButton.Location = $System_Drawing_Point
#$cancelButton.Size = New-Object System.Drawing.Size(75,23)
#$cancelButton.Text = 'Cancel'
    ##$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
    ##$window1_NET.CancelButton = $cancelButton
#$window1_NET.Controls.Add($cancelButton)

$labelTxtHead = New-Object System.Windows.Forms.Label
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 100
$System_Drawing_Point.Y = 80
$labelTxtHead.Location = $System_Drawing_Point
$labelTxtHead.Size = New-Object System.Drawing.Size(500,30)
$labelTxtHead.Text = 'Paste video link down here:'
$labelTxtHead.Font = New-Object System.Drawing.Font("",12,[System.Drawing.FontStyle]::Regular)
$window1_NET.Controls.Add($labelTxtHead)

$textBox = New-Object System.Windows.Forms.TextBox
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 100
$System_Drawing_Point.Y = 120
$textBox.Location = $System_Drawing_Point
$textBox.Size = New-Object System.Drawing.Size(500,30)
$textBox.Font = New-Object System.Drawing.Font("",14,[System.Drawing.FontStyle]::Regular)
$window1_NET.Controls.Add($textBox)

$updateButton = New-Object System.Windows.Forms.Button
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 250
$System_Drawing_Point.Y = 450
$updateButton.Location = $System_Drawing_Point                             #$updateButton.Location = New-Object System.Drawing.Size(750,950)
$updateButton.Size = New-Object System.Drawing.Size(200,40)
$updateButton.Text = "Check for Updates"
$updateButton.add_Click({
    Start-Process -FilePath $HOME\Desktop\YT-DL\youtube-dl.exe -ArgumentList '-U' -NoNewWindow -Wait             #Update youtube-dl.exe -ArgumentList -U
    [System.Windows.Forms.MessageBox]::Show("Updated! ;D","Update Checker",0,[System.Windows.Forms.MessageBoxIcon]::Exclamation)
})
$window1_NET.Controls.Add($updateButton)

$checkBoxPlay = New-Object System.Windows.Forms.CheckBox
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 150
$System_Drawing_Point.Y = 280
$checkBoxPlay.Location = $System_Drawing_Point
$checkBoxPlay.Size = New-Object System.Drawing.Size(400,60)
$checkBoxPlay.Text = 'Download hole Playlist (only works when link refers a playlist)'
$checkBoxPlay.Font = New-Object System.Drawing.Font("",12,[System.Drawing.FontStyle]::Regular)
$window1_NET.Controls.Add($checkBoxPlay)

############## START ################################################################################################################################

#region Generated Form Objects
$label2 = New-Object System.Windows.Forms.Label
$comboBox2 = New-Object System.Windows.Forms.ComboBox
$comboBox2.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList #1
#$comboBox2.DrawMode = [System.Windows.Forms.DrawMode]::OwnerDrawFixed         #3

$label1 = New-Object System.Windows.Forms.Label
$comboBox1 = New-Object System.Windows.Forms.ComboBox
$comboBox1.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList #2
#$comboBox1.DrawMode = [System.Windows.Forms.DrawMode]::OwnerDrawFixed         #4

$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

$handler_form1_Load= 
{
    $comboBox1.Items.AddRange(@('Video Format','Audio Format'))
}

$handler_comboBox1_SelectedIndexChanged= 
{
    if($comboBox1.SelectedIndex -ne -1){
        $comboBox2.Enabled = $true
        switch($comboBox1.SelectedItem){
            'Video Format' {
                $comboBox2.Items.Clear()
                $comboBox2.Items.AddRange(@("mp4","flv","ogg","webm","mkv","avi"))
            }
            'Audio Format' {
                $comboBox2.Items.Clear()
                $comboBox2.Items.AddRange(@("best","aac","flac","mp3","m4a","opus","vorbis","wav"))
            }

        }
    }
    else
    {
        $comboBox2.Enabled = $false
        $comboBox2.SelectedIndex = -1
    }

}

$handler_comboBox2_SelectedIndexChanged= 
{
    #if($comboBox2.SelectedIndex -ne -1){
    #    [System.Windows.Forms.MessageBox]::Show($comboBox2.SelectedItem)
    #}
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$window1_NET.WindowState = $InitialFormWindowState
}

$window1_NET.DataBindings.DefaultDataSourceUpdateMode = 0
$window1_NET.FormBorderStyle = 3

$window1_NET.add_Load($handler_form1_Load)

$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 100
$System_Drawing_Point.Y = 230
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 135
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 3
$label2.Text = "Datatype:"
$label2.Font = New-Object System.Drawing.Font("",14,[System.Drawing.FontStyle]::Regular)
$window1_NET.Controls.Add($label2)

$comboBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$comboBox2.Enabled = $False
$comboBox2.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 280
$System_Drawing_Point.Y = 230
$comboBox2.Location = $System_Drawing_Point
$comboBox2.Name = "comboBox2"
$System_Drawing_Size = New-Object System.Drawing.Size ##
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 300
$comboBox2.Size = $System_Drawing_Size
$comboBox2.TabIndex = 2
$comboBox2.DropDownStyle = 2
$comboBox2.Font = New-Object System.Drawing.Font("",14,[System.Drawing.FontStyle]::Regular)
$comboBox2.add_SelectedIndexChanged($handler_comboBox2_SelectedIndexChanged)

$window1_NET.Controls.Add($comboBox2)

$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 100
$System_Drawing_Point.Y = 180
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 110
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 1
$label1.Text = "Format:"
$label1.Font = New-Object System.Drawing.Font("",14,[System.Drawing.FontStyle]::Regular)
$window1_NET.Controls.Add($label1)

$comboBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$comboBox1.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 280
$System_Drawing_Point.Y = 180
$comboBox1.Location = $System_Drawing_Point
$comboBox1.Name = "comboBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 300
$comboBox1.Size = $System_Drawing_Size
$comboBox1.TabIndex = 0
$comboBox1.DropDownStyle = 2
$comboBox1.Font = New-Object System.Drawing.Font("",14,[System.Drawing.FontStyle]::Regular)
$comboBox1.add_SelectedIndexChanged($handler_comboBox1_SelectedIndexChanged)

$window1_NET.Controls.Add($comboBox1)

#Save the initial state of the form
$InitialFormWindowState = $window1_NET.WindowState
#Init the OnLoad event to correct the initial state of the form
$window1_NET.add_Load($OnLoadForm_StateCorrection)

############### END #################################################################################################################################

$img = [System.Drawing.Image]::Fromfile($HOME + '\Desktop\YT-DL\configs\backg.png')
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width = $img.Size.Width
$pictureBox.Height = $img.Size.Height
$pictureBox.Image = $img
$window1_NET.controls.add($pictureBox)

$window1_NET.Topmost = $true

$window1_NET.Add_Shown({$textBox.Select()})
$result = $window1_NET.ShowDialog()
$result









#$output = [string](nuget.exe)


