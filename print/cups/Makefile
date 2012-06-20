# $OpenBSD: Makefile,v 1.133 2012/06/20 14:54:40 ajacoutot Exp $

COMMENT=	Common Unix Printing System

VERSION=	1.5.3
DISTNAME=	cups-${VERSION}-source
PKGNAME=	cups-${VERSION}
REVISION=	5

CATEGORIES=	print sysutils

# XXX ghostscript needs to dlopen() libcupsimage.so.5 for the cups device.
SHARED_LIBS+=	cupsimage	5.0
SHARED_LIBS+=	cups		6.0
SHARED_LIBS+=	cupscgi		1.0
SHARED_LIBS+=	cupsdriver	1.0
SHARED_LIBS+=	cupsmime	1.0
SHARED_LIBS+=	cupsppdc	1.0

HOMEPAGE=	http://www.cups.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto dbus-1 gssapi jpeg krb5 m png pthread
WANTLIB += ssl stdc++ tiff usb-1.0 z

MASTER_SITES=	http://ftp.easysw.com/pub/cups/${VERSION}/ \
		http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp3.easysw.com/pub/cups/${VERSION}/

EXTRACT_SUFX=	.tar.bz2

WRKDIST=	${WRKDIR}/${DISTNAME:S/-source//}

BUILD_DEPENDS=	devel/xdg-utils \
		${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}

LIB_DEPENDS=	graphics/png \
		graphics/tiff \
		devel/libusb1 \
		x11/dbus

LIBS_ENV=	LIBcups_VERSION=${LIBcups_VERSION} \
		LIBcupscgi_VERSION=${LIBcupscgi_VERSION} \
		LIBcupsdriver_VERSION=${LIBcupsdriver_VERSION} \
		LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
		LIBcupsmime_VERSION=${LIBcupsmime_VERSION} \
		LIBcupsppdc_VERSION=${LIBcupsppdc_VERSION} \

FAKE_FLAGS=	BINMODE=${BINMODE} \
		SHAREMODE=${SHAREMODE} \
		DBUSDIR=${DESTDIR}${PREFIX}/share/examples/cups/dbus-1/system.d \
		ICONDIR=${DESTDIR}${PREFIX}/share/icons \
		MENUDIR=${DESTDIR}${PREFIX}/share/applications \
		SERVERROOT=${DESTDIR}${PREFIX}/share/examples/cups

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.10

USE_GMAKE=	Yes
USE_GROFF=	Yes

MAKE_ENV=	${LIBS_ENV}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		${LIBS_ENV}

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-cups-group=_cups \
		--with-cups-user=_cups \
		--with-system-groups=wheel \
		--with-optim="${CFLAGS}" \
		--with-dbusdir=${SYSCONFDIR}/dbus-1 \
		--with-pdftops=${LOCALBASE}/bin/gs \
		--with-perl="/usr/bin/perl" \
		--with-printcap=${SYSCONFDIR}/cups/printcap \
		--with-smbconfigfile="samba:///${SYSCONFDIR}/samba/smb.conf" \
		--enable-dbus \
		--enable-raw-printing \
		--enable-libusb \
		--disable-cdsassl \
		--disable-default-shared \
		--disable-dnssd \
		--disable-gnutls \
		--disable-launchd \
		--disable-pam \
		--disable-pap \
		--disable-slp \
		--disable-tcp-wrappers

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --enable-ldap
WANTLIB +=	ldap
LIB_DEPENDS+=	databases/openldap
.else
CONFIGURE_ARGS+=--disable-ldap
.endif

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} aclocal -I config-scripts
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf -I config-scripts
	${SUBST_CMD} ${WRKSRC}/Makedefs.in

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' \
		config.h cups-config man/*.man conf/cupsd.conf \
		doc/help/*.html

post-install:
	ln -sf ${LOCALBASE}/bin/smbspool \
		${PREFIX}/libexec/cups/backend/smb

# Remove desktop file and icons; we don't really need them (it's just a
# launcher for http://localhost:631 and we may actually want to
# configure a remote server); this is needed to prevent a dependency
# loop: cups->gtk+2,-guic->cups
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/applications

.include <bsd.port.mk>
