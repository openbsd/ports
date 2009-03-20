# Generate 'index' manpage
# Stuart Cassoff
# Version 0.1
# Winter 2009

package require doctools

lassign $argv dir descrfn outfn name title version

set modules {}
foreach fn [glob -nocomplain -dir $dir *.n] {
	set data [read [set f [open $fn]]][close $f]
	if {[regexp {.SH NAME\n(.*?) \\- (.*?)\n} $data -> shname shtitle] &&
			[regexp -line {^\.TH.*$} $data th]} {
		lappend modules [list [string map {_ ::} $shname] [lindex $th 3] [lindex $th 5] $shtitle]
	}
}
set modules [lsort -dictionary -index 0 $modules]

set mp ""
append mp {[comment {-*- tcl -*- doctools manpage}]}
append mp "\[manpage_begin $name n $version\]"
append mp "\[titledesc {$title}\]"
append mp "\[moddesc {$title}\]"

append mp {[description]} \n [read [set f [open $descrfn]]][close $f]
append mp {
To locate a manual page for a package with "::", replace "::" with "_".
For example, the manual page for package "foo::bar" would be "foo_bar".
}

append mp {[section MODULES] [list_begin options]}
foreach module $modules {
	append mp "\[opt_def {[lindex $module 0]} [lindex $module 1]\] [lindex $module 2] - [lindex $module 3]" \n
}
append mp {[list_end]}

append mp {[manpage_end]}

set f [open $outfn w]
puts -nonewline $f [[::doctools::new mp -format nroff] format $mp]
close $f


# EOF
