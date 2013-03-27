[@ww.textfield labelKey="com.edwardawebb.ssh.task.Host" name="host" required='true'/]
[@ww.textfield labelKey="com.edwardawebb.ssh.task.Username" name="username" required='true'/]

[#if mode == "create"]
    [@ww.password labelKey="com.edwardawebb.ssh.task.password" name="password" required='true'/]
	[@ww.textarea labelKey="com.edwardawebb.ssh.task.inlinescript" name="inlineScript" required='true'/]
[#elseif mode == "edit"]
    [@ww.checkbox labelKey="com.edwardawebb.ssh.task.change_command" toggle='true' name='change_command'/]
    [@ui.bambooSection dependsOn='change_command' ]
    [@ww.password labelKey="com.edwardawebb.ssh.task.password" name="new_password" required='true'/]
    [@ww.textarea labelKey="com.edwardawebb.ssh.task.inlinescript" name="inlineScript" required='true'/]
    [/@ui.bambooSection]
[/#if]

[@ww.textfield labelKey="Timeout" name="timeout" required='true'/]