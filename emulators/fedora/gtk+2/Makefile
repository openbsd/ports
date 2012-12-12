# $OpenBSD: Makefile,v 1.2 2012/12/12 19:32:35 gsoares Exp $

COMMENT=	Linux gtk+2 package based on Fedora Core ${FEDORA_V}

PKGNAME=	fedora_gtk+2-${FEDORA_V}.0

RUN_DEPENDS=	emulators/fedora/base \
		emulators/fedora/cups

RPMS=		atk-1.24.0-1.fc10.i386.rpm \
		cairo-1.8.0-1.fc10.i386.rpm \
		gamin-0.1.9-6.fc10.i386.rpm \
		glib2-2.18.4-2.fc10.i386.rpm:0 \
		gtk2-2.14.7-9.fc10.i386.rpm:0 \
		jasper-libs-1.900.1-13.fc10.i386.rpm:0 \
		libjpeg-6b-43.fc10.i386.rpm \
		libpng-1.2.37-1.fc10.i386.rpm:0 \
		libthai-0.1.9-4.fc9.i386.rpm \
		libtiff-3.8.2-14.fc10.i386.rpm:0 \
		pango-1.22.3-1.fc10.i386.rpm:0 \
		pixman-0.12.0-3.fc10.i386.rpm:0

REMOVE_DIRS=	etc/gtk-2.0/i386-redhat-linux-gnu etc/profile.d \
		usr/lib/gtk-2.0/2.10.0/filesystems \
		usr/lib/gtk-2.0/immodules usr/share/doc usr/share/man

REMOVE_FILES=	usr/bin/bmp2tiff usr/bin/cjpeg usr/bin/djpeg \
		usr/bin/fax2ps usr/bin/fax2tiff usr/bin/gif2tiff \
		usr/bin/gtk-update-icon-cache usr/bin/jpegtran \
		usr/bin/pal2rgb usr/bin/ppm2tiff usr/bin/ras2tiff \
		usr/bin/raw2tiff usr/bin/rdjpgcom usr/bin/rgb2ycbcr \
		usr/bin/thumbnail usr/bin/tiff2bw usr/bin/tiff2pdf \
		usr/bin/tiff2ps usr/bin/tiff2rgba usr/bin/tiffcmp \
		usr/bin/tiffcp usr/bin/tiffdither usr/bin/tiffdump \
		usr/bin/tiffinfo usr/bin/tiffmedian usr/bin/tiffset \
		usr/bin/tiffsplit usr/bin/update-gdk-pixbuf-loaders \
		usr/bin/update-gtk-immodules usr/bin/wrjpgcom \
		usr/libexec/gam_server

.include <bsd.port.mk>
