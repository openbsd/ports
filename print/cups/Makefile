# $OpenBSD: Makefile,v 1.51 2009/05/19 11:15:28 ajacoutot Exp $

COMMENT=		Common Unix Printing System

VERSION=		1.3.10
DISTNAME=		cups-${VERSION}-source
PKGNAME=		cups-${VERSION}p5
CATEGORIES=		print sysutils

SHARED_LIBS+=		cups		4.0
# XXX ghostscript needs to dlopen() libcupsimage.so.3
SHARED_LIBS+=		cupsimage	3.0

HOMEPAGE=		http://www.cups.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto gcrypt gpg-error gssapi jpeg krb5 m
WANTLIB += pthread z

MASTER_SITES=		http://ftp.easysw.com/pub/cups/${VERSION}/ \
			http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp3.easysw.com/pub/cups/${VERSION}/

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils \
			::devel/xdg-utils
LIB_DEPENDS=		png.>=3::graphics/png \
			tiff.>=35::graphics/tiff \
			dbus-1.>=7::x11/dbus \
			gnutls.>=14::security/gnutls

FAKE_FLAGS=		BINMODE=${BINMODE} \
			SHAREMODE=${SHAREMODE} \
			ICONDIR=${DESTDIR}${PREFIX}/share/icons \
			MENUDIR=${DESTDIR}${PREFIX}/share/applications \
			DBUSDIR=${WRKINST}/${TRUEPREFIX}/share/examples/cups/dbus-1/system.d \
			PDFTOPS="pdftops"

MAKE_ENV+=		LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION}

# UTF8 desktop file patch
DIFF_ARGS=		-a

CONFIGURE_STYLE=	gnu dest
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-cups-user=_cups \
			--with-cups-group=_cups \
			--with-system-groups=wheel \
			--localstatedir=/var \
			--without-java \
			--with-perl="/usr/bin/perl" \
			--with-optim="${CFLAGS}" \
			--without-php \
			--without-python \
			--enable-image \
			--enable-dbus \
			--enable-raw-printing \
			--enable-gssapi \
			--disable-dnssd \
			--disable-pap \
			--disable-ldap \
			--disable-slp \
			--disable-default-shared \
			--disable-pdftops

# XXX we need to use GnuTLS instead of OpenSSL because of conflicting
# symbols with Mozilla NSS which can lead to crashes
CONFIGURE_ARGS+=	--enable-gnutls=yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
			DSOFLAGS="-L${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION} \
			LIBGNUTLSCONFIG="pkg-config gnutls" \
			ac_cv_path_CUPS_GHOSTSCRIPT="${LOCALBASE}/bin/gs"

CFLAGS+=		"-I${LOCALBASE}/include" \
			"-I${LOCALBASE}/include/libpng"

WRKDIST=		${WRKDIR}/${DISTNAME:S/-source//}
USE_GMAKE=		Yes

REGRESS_FLAGS=		LOCALBASE=${LOCALBASE}

REGRESS_DEPENDS=	::print/htmldoc
REGRESS_IS_INTERACTIVE=	Yes

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
LIB_DEPENDS+=		ldap,lber::databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' init/cups.sh \
	    config.h cups-config conf/cupsd.conf man/*.man
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups/init
	cd ${WRKINST}${SYSCONFDIR}/cups && cp -R * \
		${PREFIX}/share/examples/cups
	rm -r ${WRKINST}${SYSCONFDIR}/cups ${WRKINST}/var/run \
	    ${WRKINST}/var/cache
	${INSTALL_DATA} ${WRKBUILD}/init/cups.sh ${PREFIX}/share/cups/init
.for file in cups-enable cups-disable
	cp ${FILESDIR}/${file} ${WRKBUILD}
	${SUBST_CMD} ${WRKBUILD}/${file}
	${INSTALL_SCRIPT} ${WRKBUILD}/${file} ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
