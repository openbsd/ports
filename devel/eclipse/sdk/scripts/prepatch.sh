#!/bin/sh
# $OpenBSD: prepatch.sh,v 1.3 2006/07/07 01:48:55 kurt Exp $
# $FreeBSD: ports/java/eclipse/scripts/configure,v 1.2 2004/07/25 08:01:09 nork Exp $

copy_file()
{
	srcfile="$1"
	dstfile="$2"

	rm -f "$dstfile"
	cat "$srcfile" | sed 's/linux/openbsd/g; s/Linux/OpenBSD/g;' > "$dstfile"
}

copy_dir()
{
	srcdir=$1
	dstdir=$2

	rm -rf $dstdir
	mkdir -p $dstdir
	cp -r $srcdir/* $dstdir || exit 1

	find $dstdir -type f -print0 | \
		xargs -0 perl -pi -e 's/linux/openbsd/g; s/Linux/OpenBSD/g'
}

prepatch()
{
	# Copy the files and rename/change them appropriately
	for src in $COPY_LIST
	do
		dst=`echo $src | sed 's/linux/openbsd/g; s/Linux/OpenBSD/g'`
		echo Copying $src into $dst
		if [ -d ${WRKSRC}/$src ]; then
			copy_dir ${WRKSRC}/$src ${WRKSRC}/$dst
		else
			copy_file ${WRKSRC}/$src ${WRKSRC}/$dst
		fi
	done

	# Files with spaces in their path...
	src="${SWTGTK}/make_linux.mak"
	dst=`echo $src | sed 's/linux/openbsd/g; s/Linux/OpenBSD/g;'`
	echo Copying $src into $dst
	copy_file "${WRKSRC}/$src" "${WRKSRC}/$dst"

	# Copy missing mpl about_files dir so PLIST is consistant
	src="features/org.eclipse.platform/about_files/openbsd.gtk.x86_64/about_files"
	dst="features/org.eclipse.platform/about_files/openbsd.gtk.x86"
	cp -r ${WRKSRC}/$src ${WRKSRC}/$dst

	find ${WRKSRC} -type f -and \
		\( -name \*.so -or -name \*.so.\* -or -name eclipse \) | xargs rm
}

COPY_LIST="
assemble.org.eclipse.sdk.linux.gtk.x86.xml
assemble.org.eclipse.sdk.linux.gtk.x86_64.xml
features/org.eclipse.platform.launchers/bin/gtk/linux/x86
features/org.eclipse.platform.launchers/bin/gtk/linux/x86_64
features/org.eclipse.platform.launchers/library/gtk/make_linux.mak
features/org.eclipse.platform/about_files/linux.gtk.x86
features/org.eclipse.platform/about_files/linux.gtk.x86_64
package.org.eclipse.sdk.linux.gtk.x86.xml
package.org.eclipse.sdk.linux.gtk.x86_64.xml
plugins/org.eclipse.core.filesystem.linux.x86
plugins/org.eclipse.core.filesystem.linux.x86/os/linux
plugins/org.eclipse.core.filesystem.linux.x86_64
plugins/org.eclipse.core.filesystem.linux.x86_64/os/linux
plugins/org.eclipse.core.filesystem/natives/unix/linux
plugins/org.eclipse.jdt.core/scripts/export-ejavac2_linux.xml
plugins/org.eclipse.jdt.core/scripts/export-ejavac_linux.xml
plugins/org.eclipse.jdt.source.linux.gtk.x86
plugins/org.eclipse.jdt.source.linux.gtk.x86_64
plugins/org.eclipse.jface/src/org/eclipse/jface/resource/jfacefonts_linux.properties
plugins/org.eclipse.jface/src/org/eclipse/jface/resource/jfacefonts_linux_gtk.properties
plugins/org.eclipse.pde.source.linux.gtk.x86
plugins/org.eclipse.pde.source.linux.gtk.x86
plugins/org.eclipse.platform.source.linux.gtk.x86
plugins/org.eclipse.platform.source.linux.gtk.x86_64
plugins/org.eclipse.rcp.source.linux.gtk.x86
plugins/org.eclipse.rcp.source.linux.gtk.x86_64
plugins/org.eclipse.swt.gtk.linux.x86
plugins/org.eclipse.swt.gtk.linux.x86_64
plugins/org.eclipse.update.core.linux
plugins/org.eclipse.update.core.linux/os/linux
"

SWTGTK="plugins/org.eclipse.swt/Eclipse SWT PI/gtk/library"

prepatch
exit 0
