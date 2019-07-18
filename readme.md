# Sandbox Packer
Builds the Sandbox Base Box for Vagrant.

## Usage
By default, using make will create a virtualbox box.
<pre>make</pre>

You can also specified which virtualization you want to use. Sandbox supports Parallels and Hyper-V ( Coming Soon ).
<pre> make virtualbox</pre>
<pre> make parallels</pre>
<pre> make hyperv</pre>

## Pre-Built
I also have created  project that goes along with this. Sandbox is a WordPress development environment that uses this base box.