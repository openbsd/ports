# $OpenBSD: Makefile,v 1.117 2011/10/19 12:59:55 ajacoutot Exp $

COMMENT=	Common Unix Printing System

VERSION=	1.5.0
DISTNAME=	cups-${VERSION}-source
PKGNAME=	cups-${VERSION}

REVISION=	3

CATEGORIES=	print sysutils

# XXX ghostscript needs to dlopen() libcupsimage.so.5
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

WANTLIB += 	asn1 c crypto dbus-1>=7 gssapi jpeg krb5 m png>=3 pthread
WANTLIB +=	ssl stdc++ tiff>=35 z usb

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

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils

LIB_DEPENDS=	graphics/png \
		graphics/tiff \
		devel/libusb \
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

AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9

USE_GMAKE=	Yes
USE_GROFF=	Yes

MAKE_ENV=	${LIBS_ENV}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		${LIBS_ENV}

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-cups-user=_cups \
		--with-cups-group=_cups \
		--with-system-groups=wheel \
		--localstatedir=/var \
		--without-java \
		--with-perl="/usr/bin/perl" \
		--with-optim="${CFLAGS}" \
		--with-smbconfigfile="samba:///${SYSCONFDIR}/samba/smb.conf" \
		--with-pdftops="${LOCALBASE}/bin/gs" \
		--without-php \
		--without-python \
		--enable-image \
		--enable-dbus \
		--enable-texttops \
		--enable-raw-printing \
		--enable-gssapi \
		--enable-openssl \
		--enable-libusb \
		--disable-gnutls \
		--disable-pam \
		--disable-launchd \
		--disable-pap \
		--disable-slp \
		--disable-tcp-wrappers \
		--disable-default-shared

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --enable-ldap
WANTLIB +=	ldap
LIB_DEPENDS+=	databases/openldap
.else
CONFIGURE_ARGS+=--disable-ldap
.endif

# needed otherwise cups will strip binaries even with INSTALL_STRIP=
.if defined(DEBUG)
CONFIGURE_ARGS += --enable-debug
.endif

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} aclocal -I config-scripts
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf -I config-scripts
	${SUBST_CMD} ${WRKSRC}/Makedefs.in

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' \
		config.h cups-config man/*.man

post-install:
	ln -sf ${LOCALBASE}/bin/smbspool \
		${PREFIX}/libexec/cups/backend/smb

# Create a link to foomatic drivers database ; we do it here instead of
# using --enable-ppds-to-cups in the foomatic-db port so that we don't
# need to depend on it (other printer driver packages install PPDs under
# ${PREFIX}/share/foomatic/db/source/PPD too, e.g. foo2zjs, hpijs...).
	ln -sf ${LOCALBASE}/share/foomatic/db/source/PPD \
		${PREFIX}/share/cups/model/foomatic-db-ppds

.include <bsd.port.mk>
