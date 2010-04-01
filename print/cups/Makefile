# $OpenBSD: Makefile,v 1.70 2010/04/01 07:14:43 ajacoutot Exp $

COMMENT=	Common Unix Printing System

VERSION=	1.4.3
DISTNAME=	cups-${VERSION}-source
PKGNAME=	cups-${VERSION}p0

CATEGORIES=	print sysutils

# XXX ghostscript needs to dlopen() libcupsimage.so.4
SHARED_LIBS+=	cupsimage	4.0
SHARED_LIBS+=	cups		5.0
SHARED_LIBS+=	cupscgi		0.0
SHARED_LIBS+=	cupsdriver	0.0
SHARED_LIBS+=	cupsmime	0.0
SHARED_LIBS+=	cupsppdc	0.0

HOMEPAGE=	http://www.cups.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto dbus-1 gssapi jpeg krb5 m pthread ssl
WANTLIB += stdc++ z

MASTER_SITES=	http://ftp.easysw.com/pub/cups/${VERSION}/ \
		http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
		ftp://ftp3.easysw.com/pub/cups/${VERSION}/

EXTRACT_SUFX=	.tar.bz2

WRKDIST=	${WRKDIR}/${DISTNAME:S/-source//}

BUILD_DEPENDS=	::devel/xdg-utils \
		${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::devel/xdg-utils

LIB_DEPENDS=	png.>=3::graphics/png \
		tiff.>=35::graphics/tiff \
		avahi-client,avahi-common::net/avahi

LIBS_ENV=	LIBcups_VERSION=${LIBcups_VERSION} \
		LIBcupscgi_VERSION=${LIBcupscgi_VERSION} \
		LIBcupsdriver_VERSION=${LIBcupsdriver_VERSION} \
		LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
		LIBcupsmime_VERSION=${LIBcupsmime_VERSION} \
		LIBcupsppdc_VERSION=${LIBcupsppdc_VERSION} \

MAKE_ENV=	${LIBS_ENV}

FAKE_FLAGS=	BINMODE=${BINMODE} \
		SHAREMODE=${SHAREMODE} \
		DBUSDIR=${DESTDIR}${PREFIX}/share/examples/cups/dbus-1/system.d \
		ICONDIR=${DESTDIR}${PREFIX}/share/icons \
		MENUDIR=${DESTDIR}${PREFIX}/share/applications

AUTOCONF_VERSION= 2.62
AUTOMAKE_VERSION= 1.9

USE_GMAKE=	Yes

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
		--enable-avahi \
		--enable-image \
		--enable-tcp-wrappers \
		--enable-dbus \
		--enable-texttops \
		--enable-raw-printing \
		--enable-gssapi \
		--enable-openssl \
		--disable-gnutls \
		--disable-libusb \
		--disable-pam \
		--disable-launchd \
		--disable-pap \
		--disable-slp \
		--disable-default-shared

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		${LIBS_ENV}

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH:Mmips64*}
CFLAGS+=	-O0
.endif

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --enable-ldap
LIB_DEPENDS+=	ldap::databases/openldap
.else
CONFIGURE_ARGS+=--disable-ldap
.endif

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I config-scripts
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf -I config-scripts

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' \
		config.h cups-config man/*.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups/
	cd ${WRKINST}${SYSCONFDIR}/cups/ && mv * \
		${PREFIX}/share/examples/cups
	@rmdir ${WRKINST}${SYSCONFDIR}/cups/
.for file in cups-enable cups-disable
	cp ${FILESDIR}/${file} ${WRKBUILD}
	${SUBST_CMD} ${WRKBUILD}/${file}
	${INSTALL_SCRIPT} ${WRKBUILD}/${file} ${PREFIX}/sbin
.endfor

# Create a link to foomatic drivers database ; we do it here instead of
# using --enable-ppds-to-cups in the foomatic-db port so that we don't
# need to depend on it (other printer driver packages install PPDs under
# ${PREFIX}/share/foomatic/db/source/PPD too, e.g. foo2zjs, hpijs...).
	ln -sf ${LOCALBASE}/share/foomatic/db/source/PPD \
		${PREFIX}/share/cups/model/foomatic-db-ppds

.include <bsd.port.mk>
