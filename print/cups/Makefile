# $OpenBSD: Makefile,v 1.173 2014/03/09 21:46:34 ajacoutot Exp $

COMMENT-main=		Common Unix Printing System
COMMENT-libs=		CUPS libraries and headers

VERSION=		1.7.1
DISTNAME=		cups-${VERSION}-source
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		cups-${VERSION}
PKGNAME-libs=		cups-libs-${VERSION}

REVISION-main=		1

CATEGORIES=		print sysutils

# config-scripts/cups-sharedlibs.m4
SHARED_LIBS+=	cupsimage	5.0 # so.2
SHARED_LIBS+=	cups		6.1 # so.2
SHARED_LIBS+=	cupscgi		1.0 # so.1
SHARED_LIBS+=	cupsmime	1.0 # so.1
SHARED_LIBS+=	cupsppdc	1.0 # so.1

HOMEPAGE=		http://www.cups.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 avahi-client avahi-common crypto gssapi krb5 m pthread
WANTLIB += com_err heimbase roken wind ssl stdc++ z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c cups cupscgi cupsimage cupsmime cupsppdc dbus-1 usb-1.0

MASTER_SITES=		${HOMEPAGE}software/${VERSION}/

WRKDIST=		${WRKDIR}/${DISTNAME:S/-source//}

MULTI_PACKAGES=		-main -libs

# XXX $(LIBTOOL) is hardcoded in some Makefiles even when *not* using
# --enable-libtool-unsupported
USE_LIBTOOL=		No

BUILD_DEPENDS=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

# bootstrap prevents a cyclic dep: gtk+{2,3}->cups->avahi->gtk+{2,3}
LIB_DEPENDS-libs=	net/avahi,no_gui,no_mono,no_qt3,no_qt4,bootstrap

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

AUTOCONF_VERSION= 	2.68
AUTOMAKE_VERSION= 	1.10

USE_GMAKE=		Yes

MAKE_ENV=		${LIBS_ENV}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			${LIBS_ENV}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-cups-group=_cups \
			--with-cups-user=_cups \
			--with-system-groups=wheel \
			--with-optim="${CFLAGS}" \
			--with-dbusdir=${SYSCONFDIR}/dbus-1 \
			--with-printcap=${SYSCONFDIR}/cups/printcap \
			--with-smbconfigfile="samba:///${SYSCONFDIR}/samba/smb.conf" \
			--enable-openssl \
			--disable-cdsassl \
			--disable-gnutls \
			--disable-pam \
			--without-java \
			--without-php \
			--without-python

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} aclocal -I config-scripts
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf -I config-scripts
	${SUBST_CMD} ${WRKSRC}/{Makedefs.in,cups/Makefile}

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' \
		config.h cups-config man/*.man

post-install:
	ln -sf ${LOCALBASE}/bin/smbspool \
		${PREFIX}/libexec/cups/backend/smb
# used to register as @sample: classes.conf, client.conf, lpoptions,
# printers.conf and subscriptions.conf in the PLIST
	touch ${PREFIX}/share/examples/cups/empty.conf
# Remove files now part of cups-filters
	rm ${PREFIX}/share/cups/banners/*
	rm ${PREFIX}/share/cups/data/testprint

# Remove desktop file and icons; we don't really need them (it's just a
# launcher for http://localhost:631 and we may actually want to
# configure a remote server); this is needed to prevent a dependency
# loop: cups->gtk+2,-guic->cups
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/applications

.include <bsd.port.mk>
