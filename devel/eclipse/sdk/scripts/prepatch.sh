#!/bin/sh
# $OpenBSD: prepatch.sh,v 1.1.1.1 2005/02/04 17:18:13 kurt Exp $
# $FreeBSD: ports/java/eclipse/scripts/configure,v 1.2 2004/07/25 08:01:09 nork Exp $

copy_dir()
{
	srcdir=$1
	dstdir=$2


	rm -rf "$dstdir"
	cp -r "$srcdir" "$dstdir" || exit 1

	find "$dstdir" -type f -print0 | \
		xargs -0 perl -pi -e 's/linux/openbsd/g; s/Linux/OpenBSD/g'
}

prepatch()
{
	# Copy the files and rename/change them appropriately
	for src in $COPY_LIST
	do
		dst=`echo $src | sed 's/linux/openbsd/g; s/Linux/OpenBSD/g'`
		echo Copying $src into $dst
		copy_dir ${WRKSRC}/$src ${WRKSRC}/$dst
	done

	# Determine the toolkit we must use
	if [ "${ECLIPSE_WS}" = "motif" ]; then
		ln -sf "${SWTMOTIF}" ${SWTSHORT}   || exit 1
		ln -sf "${SWTMOTIFGTK}"/* ${SWTSHORT} || exit 1
	else
		ln -sf "${SWTGTK}" ${SWTSHORT}   || exit 1
	fi
	ln -sf "${SWTCOMMON}"/* ${SWTSHORT} || exit 1
	ln -sf "${SWTAWT}"/* ${SWTSHORT} || exit 1
	ln -sf "${SWTMOZ}"/* ${SWTSHORT} || exit 1
	ln -sf "${SWTPROG}"/* ${SWTSHORT} || exit 1

	find ${WRKSRC} -name \*.so | xargs rm
	find ${WRKSRC} -name \*.so.\* | xargs rm
}

COPY_LIST="
plugins/org.eclipse.jface/src/org/eclipse/jface/resource/jfacefonts_linux.properties
plugins/org.eclipse.jface/src/org/eclipse/jface/resource/jfacefonts_linux_gtk.properties
plugins/platform-launcher/library/motif/make_linux.mak
assemble.org.eclipse.sdk.linux.motif.x86.xml
assemble.org.eclipse.sdk.linux.gtk.x86.xml

plugins/org.eclipse.pde.source.linux.gtk.x86
plugins/org.eclipse.pde.source.linux.motif.x86
plugins/org.eclipse.platform.source.linux.motif.x86
plugins/org.eclipse.swt.motif/os/linux
plugins/org.eclipse.jdt.source.linux.motif.x86
plugins/org.eclipse.platform.source.linux.gtk.x86
plugins/org.eclipse.jdt.source.linux.gtk.x86
plugins/org.eclipse.update.core.linux
plugins/org.eclipse.update.core.linux/os/linux
plugins/org.eclipse.core.resources.linux
plugins/org.eclipse.core.resources.linux/os/linux
plugins/org.eclipse.swt.gtk/os/linux
plugins/platform-launcher/bin/linux
features/org.eclipse.platform/linux.motif
"

SWTGTK="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT PI/gtk/library"
SWTMOTIF="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT PI/motif/library"
SWTMOTIFGTK="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT PI/motif_gtk/library"
SWTCOMMON="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT/common/library"
SWTAWT="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT AWT/gtk/library"
SWTMOZ="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT Mozilla/common/library"
SWTPROG="${WRKSRC}/plugins/org.eclipse.swt/Eclipse SWT Program/gnome/library"
SWTSHORT="${WRKSRC}/plugins/org.eclipse.swt/Eclipse_SWT"

prepatch
exit 0
