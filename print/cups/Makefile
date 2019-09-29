# $OpenBSD: Makefile,v 1.251 2019/09/29 13:25:15 ajacoutot Exp $

COMMENT-main=		Common Unix Printing System
COMMENT-libs=		CUPS libraries and headers

VERSION=		2.3.0
GH_ACCOUNT=		apple
GH_PROJECT=		cups
GH_TAGNAME=		v${VERSION}

PKGNAME-main=		cups-${VERSION}
PKGNAME-libs=		cups-libs-${VERSION}

REVISION-main=		1

CATEGORIES=		print sysutils

# config-scripts/cups-sharedlibs.m4
SHARED_LIBS+=  cupsimage       6.1 # 2
SHARED_LIBS+=  cups            7.1 # 2

HOMEPAGE=		http://www.cups.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB += avahi-client avahi-common iconv m pthread z

WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += c cups dbus-1 usb-1.0

WANTLIB-libs += ${WANTLIB} gnutls

MULTI_PACKAGES=		-main -libs

BUILD_DEPENDS=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

# bootstrap prevents a cyclic dep: gtk+{2,3}->cups->avahi->gtk+{2,3}
LIB_DEPENDS-libs=	net/avahi,no_gui,bootstrap \
			security/gnutls

LIB_DEPENDS-main=	${BASE_PKGPATH},-libs=${VERSION} \
			devel/libusb1

RUN_DEPENDS-main=	print/cups-filters

# optional for now
#RUN_DEPENDS-main +=	graphics/colord

# we don't install the desktop file
#BUILD_DEPENDS +=	devel/xdg-utils
#RUN_DEPENDS-main +=	devel/xdg-utils

LIBS_ENV=		LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupscgi_VERSION=${LIBcupscgi_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
			LIBcupsmime_VERSION=${LIBcupsmime_VERSION} \
			LIBcupsppdc_VERSION=${LIBcupsppdc_VERSION} \

FAKE_FLAGS=		BUILDROOT=${WRKINST} \
			DBUSDIR=${PREFIX}/share/examples/cups/dbus-1 \
			ICONDIR=${PREFIX}/share/icons \
			MENUDIR=${PREFIX}/share/applications \
			SERVERROOT=${WRKINST}${PREFIX}/share/examples/cups

AUTOCONF_VERSION= 	2.69
AUTOMAKE_VERSION= 	1.15

USE_GMAKE=		Yes

MAKE_ENV=		${LIBS_ENV}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			${LIBS_ENV}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-libtool_unsupported \
			--with-cups-group=_cups \
			--with-cups-user=_cups \
			--with-system-groups=wheel \
			--with-dbusdir=${SYSCONFDIR}/dbus-1 \
			--with-printcap=${SYSCONFDIR}/cups/printcap \
			--with-smbconfigfile="samba://${SYSCONFDIR}/samba/smb.conf" \
			--disable-cdsassl \
			--disable-pam \
			--disable-systemd

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makedefs.in
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} aclocal -I config-scripts
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} autoconf -I config-scripts

post-install:
	ln -sf ${LOCALBASE}/bin/smbspool \
		${PREFIX}/libexec/cups/backend/smb
# used to register as @sample: classes.conf, client.conf, lpoptions,
# printers.conf and subscriptions.conf in the PLIST
	touch ${PREFIX}/share/examples/cups/empty.conf
# Remove files now part of cups-filters
	rm -f ${PREFIX}/share/cups/banners/*
	rm -f ${PREFIX}/share/cups/data/testprint

# Remove desktop file and icons; we don't really need them (it's just a
# launcher for http://localhost:631 and we may actually want to
# configure a remote server); this is needed to prevent a dependency
# loop: cups->gtk+3,-guic->cups
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/applications

# Remove systemV files
	rm -rf ${WRKINST}/etc/rc.d/{init,rc*}.d

.include <bsd.port.mk>
