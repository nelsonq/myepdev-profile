#!/bin/sh
export MAVEN_INST_ROOT=${MAVEN_INST_ROOT:=~/apphome}

# M2_HOME configuration
# [check point] In case of maven got upgrade.
export M2_HOME_362=$MAVEN_INST_ROOT/apache-maven-3.6.2
export M2_HOME_354=$MAVEN_INST_ROOT/apache-maven-3.5.4
export M2_HOME_352=$MAVEN_INST_ROOT/apache-maven-3.5.2
export M2_HOME_339=$MAVEN_INST_ROOT/apache-maven-3.3.9
export M2_HOME_305=$MAVEN_INST_ROOT/apache-maven-3.0.5

# MAVEN_OPTS configuration
# [check point] In case of maven option got upgrade.
export MAVEN_OPTS_305='-Xmx1024m -XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m -Dsun.lang.ClassLoader.allowArraySyntax=true -ea'
export MAVEN_OPTS_339='-Xmx2048m -XX:ReservedCodeCacheSize=128m -Dsun.lang.ClassLoader.allowArraySyntax=true -agentpath:/Applications/YourKit-Java-Profiler.app/Contents/Resources/bin/mac/libyjpagent.dylib '
export MAVEN_OPTS_352=$MAVEN_OPTS_339
export MAVEN_OPTS_354=$MAVEN_OPTS_352
export MAVEN_OPTS_362=$MAVEN_OPTS_354

# JAVA_HOME configuration
# [check point] In case of jdk got upgrade.
os="$(uname -s)"
if [ "$os" = "Darwin" ];then
export JAVA_HOME_8U66=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home
export JAVA_HOME_8U161=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export JAVA_HOME_8U144=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
# NOTE: Zulu JDK now.
export JAVA_HOME_8U212=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export JAVA_HOME_7U51=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export JAVA_HOME_7U79=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_HOME_7U80=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
else
export JAVA_HOME_8U66=~/Work/apphome/jdk1.8.0_66
export JAVA_HOME_8U161=~/Work/apphome/jdk1.8.0_161
export JAVA_HOME_8U144=~/Work/apphome/jdk1.8.0_144
export JAVA_HOME_7U51=~/Work/apphome/jdk1.7.0_51
export JAVA_HOME_7U79=~/Work/apphome/jdk1.7.0_79
export JAVA_HOME_7U80=~/Work/apphome/jdk1.7.0_80

fi

# UPDATE default JAVA_HOME per java major release.
export JAVA_HOME_7=$JAVA_HOME_7U79
export JAVA_HOME_8=$JAVA_HOME_8U212

# JAVA_OPTS configuration
# ===============================
export JAVA_OPTS_8='-Xmx1024m -Dsun.lang.ClassLoader.allowArraySyntax=true'
export JAVA_OPTS_7='-Xmx1024m -XX:MaxPermSize=512m -Dsun.lang.ClassLoader.allowArraySyntax=true'
# ==============================

# EP release mapping of each configuration
# [check point] In case of ep commerce got new release.
# suppose ep 614 should use 7u51, but mac os doesn't allow to install unless some hacking. use 7u79 instead.
export JAVA_HOME_EP614=$JAVA_HOME_7U79;export M2_HOME_EP614=$M2_HOME_305;export JAVA_OPTS_EP614=$JAVA_OPTS_7;export MAVEN_OPTS_EP614=$MAVEN_OPTS_305
export JAVA_HOME_EP6152=$JAVA_HOME_8U66;export M2_HOME_EP6152=$M2_HOME_305;export JAVA_OPTS_EP6152=$JAVA_OPTS_8;export MAVEN_OPTS_EP6152=$MAVEN_OPTS_305
export JAVA_HOME_EP616=$JAVA_HOME_8U66;export M2_HOME_EP616=$M2_HOME_339;export JAVA_OPTS_EP616=$JAVA_OPTS_8;export MAVEN_OPTS_EP616=$MAVEN_OPTS_339
export JAVA_HOME_EP617=$JAVA_HOME_8U66;export M2_HOME_EP617=$M2_HOME_339;export JAVA_OPTS_EP617=$JAVA_OPTS_8;export MAVEN_OPTS_EP617=$MAVEN_OPTS_339
export JAVA_HOME_EP701=$JAVA_HOME_8U66;export M2_HOME_EP701=$M2_HOME_339;export JAVA_OPTS_EP701=$JAVA_OPTS_8;export MAVEN_OPTS_EP701=$MAVEN_OPTS_339
export JAVA_HOME_EP71=$JAVA_HOME_8U144;export M2_HOME_EP71=$M2_HOME_339;export JAVA_OPTS_EP71=$JAVA_OPTS_8;export MAVEN_OPTS_EP71=$MAVEN_OPTS_339
export JAVA_HOME_EP72=$JAVA_HOME_8U144;export M2_HOME_EP72=$M2_HOME_339;export JAVA_OPTS_EP72=$JAVA_OPTS_8;export MAVEN_OPTS_EP72=$MAVEN_OPTS_339
export JAVA_HOME_EP73=$JAVA_HOME_8U144;export M2_HOME_EP73=$M2_HOME_352;export JAVA_OPTS_EP73=$JAVA_OPTS_8;export MAVEN_OPTS_EP73=$MAVEN_OPTS_352
export JAVA_HOME_EP74=$JAVA_HOME_8U144;export M2_HOME_EP74=$M2_HOME_352;export JAVA_OPTS_EP74=$JAVA_OPTS_8;export MAVEN_OPTS_EP74=$MAVEN_OPTS_352
export JAVA_HOME_EP75=$JAVA_HOME_8U212;export M2_HOME_EP75=$M2_HOME_352;export JAVA_OPTS_EP75=$JAVA_OPTS_8;export MAVEN_OPTS_EP75=$MAVEN_OPTS_352
export JAVA_HOME_EP76=$JAVA_HOME_8U212;export M2_HOME_EP76=$M2_HOME_362;export JAVA_OPTS_EP76=$JAVA_OPTS_8;export MAVEN_OPTS_EP76=$MAVEN_OPTS_362
export JAVA_HOME_EP8=$JAVA_HOME_8U212;export M2_HOME_EP8=$M2_HOME_362;export JAVA_OPTS_EP8=$JAVA_OPTS_8;export MAVEN_OPTS_EP8=$MAVEN_OPTS_362

# [check point] In case of ep commerce got new release. 
export JAVA_HOME_EP7x=$JAVA_HOME_EP76;export M2_HOME_EP7x=$M2_HOME_EP76;export JAVA_OPTS_EP7x=$JAVA_OPTS_EP76;export MAVEN_OPTS_EP7x=$MAVEN_OPTS_EP76
export JAVA_HOME_EP8x=$JAVA_HOME_EP8;export M2_HOME_EP8x=$M2_HOME_EP8;export JAVA_OPTS_EP8x=$JAVA_OPTS_EP8;export MAVEN_OPTS_EP8x=$MAVEN_OPTS_EP8

# export default configuration
export JAVA_HOME=$JAVA_HOME_EP8x
export M2_HOME=$M2_HOME_EP8x
export JAVA_OPTS=$JAVA_OPTS_EP8x
export MAVEN_OPTS=$MAVEN_OPTS_EP8x

# don't think this one is necessary. somehow it is here.
#export JAVA_TOOL_OPTIONS="-Xmx4096m -Xms512m -Dfile.encoding=UTF-8"

export PATH=~/bin:$M2_HOME/bin:$JAVA_HOME/bin:$PATH:
