# new major update of CUPS (v3.0) will drop support for print filter and driver;
# look at bringing some native support with:
# https://www.msweet.org/pappl/
# https://www.msweet.org/lprint/
# for details, see https://github.com/OpenPrinting/cups/issues/103

COMMENT-main=		Common Unix Printing System
COMMENT-libs=		CUPS libraries and headers

VERSION=		${GH_TAGNAME:S/v//:S/op/./}
GH_ACCOUNT=		OpenPrinting
GH_PROJECT=		cups
GH_TAGNAME=		v2.4.12

REVISION-main=		0

SITES.github=		https://github.com/OpenPrinting/cups/commit/
PATCHFILES.github=	5910c99b9211641e0691b2d418ee546af54c7a8c.diff \
			ac85dcba38255a99a4452e069396f63a49ab3546.diff \
			f6a2b50d49b4e471874aae807e4f2b28d3ac0063.diff \
			e5642ac1c474d0c8317d14abc8b8dcd906de4689.diff \
			3735a3edb11fe814b9a67e6a46f7a62af857168e.diff \
			b876d8224b6400718540e0aaea44a787859e3a77.diff
PATCH_DIST_STRIP=	-p1

CATEGORIES=		print sysutils

# config-scripts/cups-sharedlibs.m4
SHARED_LIBS+=  cupsimage       6.2 # 2
SHARED_LIBS+=  cups            7.3 # 2

HOMEPAGE=		https://openprinting.github.io/cups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB += avahi-client avahi-common iconv m pthread z

WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += c cups dbus-1 usb-1.0

WANTLIB-libs += ${WANTLIB} crypto ssl

MULTI_PACKAGES=		-main -libs

BUILD_DEPENDS=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

# bootstrap prevents a cyclic dep: gtk+{2,3}->cups->avahi->gtk+{2,3}
LIB_DEPENDS-libs=	${LIB_DEPENDS} \
			net/avahi,no_gui,bootstrap,-libs

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${BASE_PKGPATH},-libs=${VERSION} \
			devel/libusb1

RUN_DEPENDS-main=	print/cups-browsed \
			print/cups-filters

# don't enforce dependency on colord; it'll be used if found at runtime
#RUN_DEPENDS-main +=	graphics/colord

# we don't install the desktop file
#BUILD_DEPENDS +=	devel/xdg-utils
#RUN_DEPENDS-main +=	devel/xdg-utils

LIBS_ENV=		LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupscgi_VERSION=${LIBcupscgi_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
			LIBcupsmime_VERSION=${LIBcupsmime_VERSION} \
			LIBcupsppdc_VERSION=${LIBcupsppdc_VERSION}

FAKE_FLAGS=		BUILDROOT=${WRKINST} \
			DBUSDIR=${PREFIX}/share/examples/cups/dbus-1 \
			ICONDIR=${PREFIX}/share/icons \
			MENUDIR=${PREFIX}/share/applications \
			SERVERROOT=${WRKINST}${PREFIX}/share/examples/cups

AUTOCONF_VERSION= 	2.71
AUTOMAKE_VERSION= 	1.16

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
			--disable-pam \
			--without-systemd

DEBUG_PACKAGES=		${BUILD_PACKAGES}

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
# loop: cups->gtk+4,-guic->cups
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/applications

# Remove systemV files
	rm -rf ${WRKINST}/etc/rc.d/{init,rc*}.d

.include <bsd.port.mk>
