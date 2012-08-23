# $OpenBSD: Makefile,v 1.139 2012/08/23 16:25:48 ajacoutot Exp $

COMMENT-main=		Common Unix Printing System
COMMENT-libs=		CUPS libraries and headers

VERSION=		1.6.1
DISTNAME=		cups-${VERSION}-source
EXTRACT_SUFX=		.tar.bz2

REVISION-main=		2
REVISION-libs=		2

PKGNAME-main=		cups-${VERSION}
PKGNAME-libs=		cups-libs-${VERSION}

CATEGORIES=		print sysutils

SHARED_LIBS+=	cupsimage	5.0
SHARED_LIBS+=	cups		6.1
SHARED_LIBS+=	cupscgi		1.0
SHARED_LIBS+=	cupsmime	1.0
SHARED_LIBS+=	cupsppdc	1.0

HOMEPAGE=		http://www.cups.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto gssapi krb5 m pthread
WANTLIB += ssl stdc++ z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += cups cupscgi cupsimage cupsmime cupsppdc dbus-1 usb-1.0

MASTER_SITES=		http://ftp.easysw.com/pub/cups/${VERSION}/ \
			http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp3.easysw.com/pub/cups/${VERSION}/

WRKDIST=		${WRKDIR}/${DISTNAME:S/-source//}

MULTI_PACKAGES=		-main -libs

BUILD_DEPENDS=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

RUN_DEPENDS-main=	print/cups-filters

# optional for now
#RUN_DEPENDS-main +=	graphics/colord

# we don't install the desktop file
#BUILD_DEPENDS +=	devel/xdg-utils
#RUN_DEPENDS-main +=	devel/xdg-utils

LIB_DEPENDS-main=	${BASE_PKGPATH},-libs \
			devel/libusb1 \
			x11/dbus

LIBS_ENV=		LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupscgi_VERSION=${LIBcupscgi_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
			LIBcupsmime_VERSION=${LIBcupsmime_VERSION} \
			LIBcupsppdc_VERSION=${LIBcupsppdc_VERSION} \

FAKE_FLAGS=		BUILDROOT=${WRKINST} \
			DBUSDIR=${PREFIX}/share/examples/cups/dbus-1/system.d \
			ICONDIR=${PREFIX}/share/icons \
			MENUDIR=${PREFIX}/share/applications \
			SERVERROOT=${WRKINST}${PREFIX}/share/examples/cups

AUTOCONF_VERSION= 	2.68
AUTOMAKE_VERSION= 	1.10

USE_GMAKE=		Yes

MAKE_ENV=		${LIBS_ENV}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
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
			--with-perl="/usr/bin/perl" \
			--with-printcap=${SYSCONFDIR}/cups/printcap \
			--with-smbconfigfile="samba:///${SYSCONFDIR}/samba/smb.conf" \
			--enable-libusb \
			--enable-dbus \
			--enable-openssl \
			--disable-cdsassl \
			--disable-gnutls \
			--disable-libpaper \
			--disable-pam \
			--disable-default-shared \
			--without-java \
			--without-php \
			--without-python

# XXX FLAVOR?; adds to many dependencies to cups,-libs
CONFIGURE_ARGS +=	--disable-avahi \
			--disable-dnssd

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

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
