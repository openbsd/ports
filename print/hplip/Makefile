# $OpenBSD: Makefile,v 1.18 2010/04/07 10:07:26 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	HP Unix imaging and printing
COMMENT-hpijs=	HP Inkjet ghostscript driver (spooler independent)
COMMENT-hpcups=	HP native CUPS driver
COMMENT-libs=	HPLIP backend libraries
COMMENT-gui=	HPLIP graphical tools

V=		3.10.2
DISTNAME=	hplip-${V}

PKGNAME-main=	${DISTNAME}p2
PKGNAME-hpijs=	hpijs-${V}
PKGNAME-hpcups=	hpcups-${V}
PKGNAME-libs=	hplip-libs-${V}
PKGNAME-gui=	hplip-gui-${V}p0

SHARED_LIBS +=  hpmud		2.0 # .0.6
SHARED_LIBS +=  hpip		2.0 # .0.1

CATEGORIES=	print

HOMEPAGE=	http://hplipopensource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES=	-main -hpijs -hpcups -libs -gui

MODPY_RUNDEP=	No

WANTLIB += crypto m pthread

WANTLIB-main += ${WANTLIB}
WANTLIB-main += avahi-client avahi-common c crypto dbus-1 exif gphoto2
WANTLIB-main += gphoto2_port jpeg ltdl netsnmp tiff usb z

LIB_DEPENDS-main=${LIB_DEPENDS} \
		sane.>=1::graphics/sane-backends \
		cups.>=3::print/cups \
		hpip,hpmud::print/hplip,-libs
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		::print/py-reportlab/reportlab \
		::x11/dbus-python \
		::devel/py-notify \
		::graphics/py-Imaging \
		::print/hplip,-hpcups

WANTLIB-hpijs += ${WANTLIB}
WANTLIB-hpijs += c jpeg netsnmp stdc++ usb
LIB_DEPENDS-hpijs= hpip,hpmud::print/hplip,-libs \
		jpeg.>=6.3::graphics/jpeg \
		dbus-1.>=7::x11/dbus

WANTLIB-hpcups += ${WANTLIB}
WANTLIB-hpcups += c jpeg stdc++
LIB_DEPENDS-hpcups= hpip::print/hplip,-libs \
		cups.>=3,cupsimage::print/cups

LIB_DEPENDS-libs= netsnmp.>=7::net/net-snmp \
		usb.>=9::devel/libusb

WANTLIB-gui +=	# empty
RUN_DEPENDS-gui= ::x11/py-qt4 \
		::print/hplip,-main \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-gui= # empty

MODULES=	devel/gettext \
		lang/python

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
FAKE_FLAGS=	hplip_confdir=${PREFIX}/share/examples/hplip/hp \
		hplip_statedir=${PREFIX}/share/examples/hplip/db \
		mimedir=${PREFIX}/share/examples/hplip/cups

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-hpppddir=${PREFIX}/share/foomatic/db/source/PPD/HP \
		--with-cupsbackenddir=${PREFIX}/libexec/cups/backend \
		--with-cupsfilterdir=${PREFIX}/libexec/cups/filter \
		--with-icondir=${PREFIX}/share/applications \
		--with-systraydir=${PREFIX}/share/examples/hplip/xdg/autostart \
		--with-drvdir=${PREFIX}/share/cups/drv/hp \
		--with-docdir=${PREFIX}/share/doc/hplip \
		--disable-dependency-tracking \
		--disable-pp-build \
		--disable-policykit \
		--disable-qt3 \
		--enable-qt4 \
		--enable-doc-build \
		--enable-hpijs-install \
		--enable-hpcups-install \
		--enable-gui-build \
		--enable-network-build \
		--enable-scan-build \
		--enable-fax-build \
		--enable-dbus-build \
		--enable-foomatic-rip-hplip-install \
		--enable-foomatic-ppd-install \
		--enable-foomatic-drv-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	${SUBST_CMD} ${WRKSRC}/prnt/cups.py \
		${WRKSRC}/prnt/hpcups/HPCupsFilter.cpp \
		${WRKSRC}/prnt/hpijs/hpcupsfax.cpp \
		${WRKSRC}/prnt/hpijs/foomatic-rip-hplip \
		${WRKSRC}/prnt/hpijs/hpijs.cpp \
		${WRKSRC}/prnt/hpijs/globals.cpp \
		${WRKSRC}/doc/troubleshooting.html \
		${WRKSRC}/check.py \
		${WRKSRC}/ui4/devmgr5.py \
		${WRKSRC}/fax/backend/hpfax.py \
		${WRKSRC}/base/codes.py \
		${WRKSRC}/base/g.py \
		${WRKSRC}/prnt/cups.py \
		${WRKSRC}/installer/core_install.py \
		${WRKSRC}/doc/upgrading.html \
		${WRKSRC}/doc/uninstalling.html \
		${WRKSRC}/fax/coverpages.py \
		${WRKSRC}/fax/filters/pstotiff \
		${WRKSRC}/base/pkit.py \
		${WRKSRC}/prnt/hpijs/foomatic-rip-hplip \
		${WRKSRC}/installer/dcheck.py \
		${WRKSRC}/base/magic.py \
		${WRKSRC}/base/utils.py \
		${WRKSRC}/scan.py \
		${WRKSRC}/setup.py \
		${WRKSRC}/ui4/nodevicesdialog.py \
		${WRKSRC}/ui/devmgr4.py \
		${WRKSRC}/ui/nodevicesform.py

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/hplip

.include <bsd.port.mk>
