# $OpenBSD: Makefile,v 1.89 2013/08/21 13:36:11 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		HP Unix imaging and printing
COMMENT-hpaio=		HP sane(7) scanner backend
COMMENT-hpijs=		HP ghostscript driver (spooler independent)
COMMENT-hpcups=		HP native CUPS driver
COMMENT-libs=		HPLIP backend libraries
COMMENT-gui=		HPLIP graphical tools

V=			3.13.7
DISTNAME=		hplip-${V}
SUBST_VARS=		V

PKGNAME-main=		${DISTNAME}
PKGNAME-hpaio=		hpaio-${V}
PKGNAME-hpijs=		hpijs-${V}
PKGNAME-hpcups=		hpcups-${V}
PKGNAME-libs=		hplip-libs-${V}
PKGNAME-gui=		hplip-gui-${V}

REVISION-main=		5
REVISION-hpijs=		2
REVISION-hpcups=	2
REVISION-libs=		2
REVISION-gui=		2

SHARED_LIBS +=  hpmud		2.0 # 0.6
SHARED_LIBS +=  hpip		2.0 # 0.1

CATEGORIES=		print

HOMEPAGE=		http://hplipopensource.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES= 	-main -hpaio -hpijs -hpcups -libs -gui

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=		No

cWANTLIB += crypto m pthread

### -main
WANTLIB-main += ${WANTLIB} ${cWANTLIB}
WANTLIB-main += asn1 avahi-client avahi-common c com_err cups dbus-1
WANTLIB-main += gssapi heimbase hpmud krb5 netsnmp roken ssl usb-1.0
WANTLIB-main += wind z

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			print/cups,-libs \
			print/hplip,-libs

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS} \
			print/py-reportlab/reportlab \
			x11/dbus-python \
			graphics/py-Imaging \
			print/hplip,-hpcups \
			print/hplip,-hpaio

# package is only useful if cups is installed
RUN_DEPENDS-main +=	print/cups

### -hpio
WANTLIB-hpaio += ${WANTLIB} ${cWANTLIB}
WANTLIB-hpaio += asn1 avahi-client avahi-common com_err cups dbus-1
WANTLIB-hpaio += gssapi heimbase hpip hpmud jpeg krb5 netsnmp roken
WANTLIB-hpaio += sane ssl tiff usb usb-1.0 wind z

LIB_DEPENDS-hpaio=	print/hplip,-libs \
			graphics/sane-backends

RUN_DEPENDS-hpaio=	${MODGETTEXT_RUN_DEPENDS}

### -hpijs
WANTLIB-hpijs += ${cWANTLIB} hpip usb-1.0
WANTLIB-hpijs += c jpeg netsnmp stdc++ dbus-1 hpmud

LIB_DEPENDS-hpijs=	print/hplip,-libs \
			graphics/jpeg \
			x11/dbus

RUN_DEPENDS-hpijs= print/foomatic-filters #print/ghostscript/gnu

### -hpcups
WANTLIB-hpcups += ${WANTLIB} ${cWANTLIB} z asn1 gssapi krb5 ssl
WANTLIB-hpcups += c jpeg stdc++ hpip cups cupsimage dbus-1
WANTLIB-hpcups += com_err heimbase roken wind
WANTLIB-hpcups += avahi-client avahi-common

LIB_DEPENDS-hpcups=	graphics/jpeg \
			print/hplip,-libs \
			print/cups,-libs \
			x11/dbus

RUN_DEPENDS-hpcups=	${MODGETTEXT_RUN_DEPENDS}

### -libs
WANTLIB-libs +=	${cWANTLIB} netsnmp usb-1.0

LIB_DEPENDS-libs= 	net/net-snmp \
			devel/libusb1

RUN_DEPENDS-libs=	#empty

### -gui
WANTLIB-gui +=		#empty

RUN_DEPENDS-gui=	x11/py-qt4 \
			print/hplip,-main \
			devel/xdg-utils \
			devel/desktop-file-utils \
			sysutils/usbutils \
			devel/py-notify
LIB_DEPENDS-gui=	#empty

LIBTOOL_FLAGS=		--tag=disable-static
FAKE_FLAGS=		hplip_confdir=${PREFIX}/share/examples/hplip/hp \
			hplip_statedir=${PREFIX}/share/examples/hplip/db \
			mimedir=${PREFIX}/share/examples/hplip/cups \
			hplip_systraydir=${PREFIX}/share/examples/hplip/xdg/autostart

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static \
			--with-hpppddir=${PREFIX}/share/foomatic/db/source/PPD/HP \
			--with-cupsbackenddir=${PREFIX}/libexec/cups/backend \
			--with-cupsfilterdir=${PREFIX}/libexec/cups/filter \
			--with-icondir=${PREFIX}/share/applications \
			--with-docdir=${PREFIX}/share/doc/hplip \
			--enable-hpijs-install \
			--enable-foomatic-ppd-install \
			--enable-foomatic-drv-install

pre-configure:
	find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,(/usr/bin/python|/usr/bin/env python),${MODPY_BIN},g'
	perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' \
		${WRKSRC}/fax/filters/pstotiff
	perl -pi -e 's,/var/lib,/var/db,g' \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/base/g.py \
		${WRKSRC}/check.py \
		${WRKSRC}/common/utils.h \
		${WRKSRC}/common/utils.c \
		${WRKSRC}/installer/core_install.py \
		${WRKSRC}/installer/pluginhandler.py
	${SUBST_CMD} ${WRKSRC}/prnt/cups.py \
		${WRKSRC}/prnt/hpcups/HPCupsFilter.cpp \
		${WRKSRC}/prnt/hpijs/hpcupsfax.cpp \
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
	rm -r ${WRKINST}/usr/lib
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.la
	rm ${PREFIX}/lib/sane/*.la

.include <bsd.port.mk>
