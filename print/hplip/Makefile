# $OpenBSD: Makefile,v 1.84 2013/08/09 17:44:50 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	HP Unix imaging and printing
COMMENT-hpijs=	HP Inkjet ghostscript driver (spooler independent)
COMMENT-hpcups=	HP native CUPS driver
COMMENT-libs=	HPLIP backend libraries
COMMENT-gui=	HPLIP graphical tools

V=		3.13.7
DISTNAME=	hplip-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-hpijs=	hpijs-${V}
PKGNAME-hpcups=	hpcups-${V}
PKGNAME-libs=	hplip-libs-${V}
PKGNAME-gui=	hplip-gui-${V}

REVISION-main=	0
REVISION-hpijs=	0
REVISION-hpcups=0
REVISION-libs=	0
REVISION-gui=	0

SHARED_LIBS +=  hpmud		2.0 # .0.6
SHARED_LIBS +=  hpip		2.0 # .0.1

SUBST_VARS=	V

CATEGORIES=	print

HOMEPAGE=	http://hplipopensource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES=	-main -hpijs -hpcups -libs -gui

MODULES=	devel/gettext \
		lang/python

MODPY_RUNDEP=	No

cWANTLIB = crypto m pthread

WANTLIB-main += ${WANTLIB} ${cWANTLIB}
WANTLIB-main += asn1 c cups dbus-1 gssapi hpip hpmud jpeg krb5 netsnmp
WANTLIB-main += sane ssl tiff usb-1.0 z usb avahi-client avahi-common
WANTLIB-main += com_err heimbase roken wind

BUILD_DEPENDS=	sysutils/polkit

LIB_DEPENDS-main=${LIB_DEPENDS} \
		graphics/sane-backends \
		print/cups,-libs \
		print/hplip,-libs
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		${MODGETTEXT_RUN_DEPENDS} \
		print/py-reportlab/reportlab \
		x11/dbus-python \
		devel/py-notify \
		graphics/py-Imaging \
		print/hplip,-hpcups \
		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS-main +=	sysutils/consolekit

# package is only useful if cups is installed
RUN_DEPENDS-main +=	print/cups

WANTLIB-hpijs += ${cWANTLIB} hpip usb-1.0
WANTLIB-hpijs += c jpeg netsnmp stdc++ dbus-1 hpmud
LIB_DEPENDS-hpijs= print/hplip,-libs \
		graphics/jpeg \
		x11/dbus
RUN_DEPENDS-hpijs= print/foomatic-filters

WANTLIB-hpcups += ${WANTLIB} ${cWANTLIB} z asn1 gssapi krb5 ssl
WANTLIB-hpcups += c jpeg stdc++ hpip cups cupsimage dbus-1
WANTLIB-hpcups += com_err heimbase roken wind
WANTLIB-hpcups += avahi-client avahi-common
LIB_DEPENDS-hpcups= \
		graphics/jpeg \
		print/hplip,-libs \
		print/cups,-libs \
		x11/dbus
RUN_DEPENDS-hpcups=${MODGETTEXT_RUN_DEPENDS}

WANTLIB-libs +=	${cWANTLIB} netsnmp usb-1.0
LIB_DEPENDS-libs= net/net-snmp \
		devel/libusb1
RUN_DEPENDS-libs= # empty

WANTLIB-gui +=	# empty
RUN_DEPENDS-gui= x11/py-qt4 \
		print/hplip,-main \
		devel/xdg-utils \
		devel/desktop-file-utils \
		sysutils/usbutils
LIB_DEPENDS-gui= # empty

LIBTOOL_FLAGS=	--tag=disable-static
FAKE_FLAGS=	hplip_confdir=${PREFIX}/share/examples/hplip/hp \
		hplip_statedir=${PREFIX}/share/examples/hplip/db \
		mimedir=${PREFIX}/share/examples/hplip/cups \
		policykit_dbus_etcdir=${PREFIX}/share/examples/hplip/dbus-1/system.d \
		policykit_dbus_sharedir=${PREFIX}/share/dbus-1/system-services

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
		--enable-policykit \
		--enable-foomatic-rip-hplip-install \
		--enable-foomatic-ppd-install \
		--enable-foomatic-drv-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	# We don't patch because it changes at every release
	perl -pi -e "s,^PACKAGE_NAME=.*,PACKAGE_NAME='HP Linux (& Unix) Imaging and Printing',;" \
		-e "s,^PACKAGE_STRING=.*,PACKAGE_STRING='HP Linux (& Unix) Imaging and Printing ${V}'," \
		${WRKSRC}/configure
	perl -pi -e 's,/usr/share/polkit-1,${LOCALBASE}/share/polkit-1,g' ${WRKSRC}/configure
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,(/usr/bin/python|/usr/bin/env python),${MODPY_BIN},g'
	@perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' \
		${WRKSRC}/fax/filters/pstotiff
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
		${WRKSRC}/base/services.py \
		${WRKSRC}/prnt/cups.py \
		${WRKSRC}/installer/core_install.py \
		${WRKSRC}/doc/upgrading.html \
		${WRKSRC}/doc/uninstalling.html \
		${WRKSRC}/fax/coverpages.py \
		${WRKSRC}/fax/filters/pstotiff \
		${WRKSRC}/base/pkit.py \
		${WRKSRC}/prnt/hpijs/foomatic-rip-hplip \
		${WRKSRC}/installer/dcheck.py \
		${WRKSRC}/installer/pluginhandler.py \
		${WRKSRC}/base/magic.py \
		${WRKSRC}/base/utils.py \
		${WRKSRC}/scan.py \
		${WRKSRC}/setup.py \
		${WRKSRC}/ui4/nodevicesdialog.py \
		${WRKSRC}/ui/devmgr4.py \
		${WRKSRC}/ui/nodevicesform.py

post-install:
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/hplip.state \
		${PREFIX}/share/examples/hplip/db/hplip.state
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/hplip
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.la
	rm ${PREFIX}/lib/sane/*.la

.include <bsd.port.mk>
