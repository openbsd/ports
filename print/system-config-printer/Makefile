# $OpenBSD: Makefile,v 1.53 2019/07/12 20:48:57 sthen Exp $

COMMENT=		printer (CUPS) administration tool

GH_ACCOUNT=		zdohnal
GH_PROJECT=		system-config-printer
GH_TAGNAME=		1.5.11
REVISION=		3

CATEGORIES=		print sysutils

HOMEPAGE=		http://cyberelk.net/tim/software/system-config-printer/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python \
			textproc/intltool

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}


BUILD_DEPENDS=		textproc/xmlto

# desktop-file-install(1)
BUILD_DEPENDS +=	devel/desktop-file-utils

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR} \
			net/py-curl${MODPY_FLAVOR} \
			print/cups-pk-helper \
			print/py-cups${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

# pygobject introspections (not provided by indirect dependencies)
RUN_DEPENDS +=		devel/libnotify \
			x11/gnome/libsecret \
			x11/gtk+3

# only useful if cups is installed but don't enforce the dependency because
# gnome-control-center requires system-config-printer and we may not want cups
#RUN_DEPENDS +=		print/cups

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

FAKE_FLAGS=		dbusdir=${PREFIX}/share/examples/system-config-printer/dbus-1/system.d/ \
			autostartdir=${PREFIX}/share/examples/system-config-printer/xdg/autostart/ \
			cupshelpersdir=${PREFIX}/share/examples/system-config-printer/cupshelpers/

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && sed -i \
		-e "s,/usr/share/system-config-printer,${PREFIX}/share/system-config-printer,g;" \
		-e "s,/usr/local/share/ppd,${LOCALBASE}/share/ppd,g;" \
		-e "s,/usr/share/cups,${LOCALBASE}/share/cups,g;" \
		-e "s,/usr/lib/cups,${LOCALBASE}/libexec/cups,g;" \
		-e "s,/usr/lib64/cups,${LOCALBASE}/libexec/cups,g;" \
		-e "s,/usr/lib/cups,${LOCALBASE}/libexec/cups,g;" \
		-e "s,/usr/bin/cupstestppd,${LOCALBASE}/bin/cupstestppd,g" \
		check-device-ids.py \
		cupshelpers/cupshelpers.py \
		cupshelpers/xmldriverprefs.py \
		newprinter.py \
		probe_printer.py \
		test/test-cups-driver.py \
		udev/udev-configure-printer.c
	grep -rl "/usr/bin/python3" ${WRKSRC} | \
		xargs sed -i "s,/usr/bin/python3,${MODPY_BIN},g"
	cd ${WRKSRC} && touch INSTALL README ChangeLog && ${SETENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
.include <bsd.port.mk>
