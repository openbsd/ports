# $OpenBSD: Makefile,v 1.40 2009/03/15 18:31:29 ajacoutot Exp $

COMMENT=		Common Unix Printing System

VERSION=		1.2.7
DISTNAME=		cups-${VERSION}-source
PKGNAME=		cups-${VERSION}p17
CATEGORIES=		print sysutils

SHARED_LIBS+=		cups		3.0
# XXX ghostscript needs to dlopen() libcupsimage.so.2
SHARED_LIBS+=		cupsimage	2.3

HOMEPAGE=		http://www.cups.org/

MAITAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m z stdc++ pthread crypto ssl

MASTER_SITES=		http://ftp.easysw.com/pub/cups/${VERSION}/ \
			http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp3.easysw.com/pub/cups/${VERSION}/

EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils \
			::devel/xdg-utils
LIB_DEPENDS=		png.>=3::graphics/png \
			jpeg.>=62::graphics/jpeg \
			tiff.>=35::graphics/tiff

FAKE_FLAGS=		BINMODE=${BINMODE} \
			SHAREMODE=${SHAREMODE}

MAKE_ENV+=		LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION}

CONFIGURE_STYLE=	gnu dest
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	--with-cups-user=_cups \
			--with-cups-group=_cups \
			${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--enable-ssl \
			--without-java \
			--without-perl \
			--without-php \
			--without-python \
			--disable-dbus \
			--disable-gnutls

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			  -I${LOCALBASE}/include/libpng" \
			DSOFLAGS="-L${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBcups_VERSION=${LIBcups_VERSION} \
			LIBcupsimage_VERSION=${LIBcupsimage_VERSION}

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

post-configure:
	cd ${WRKBUILD} && perl -pi -e 's|\$${DESTDIR}||g' init/cups.sh \
	    config.h cups-config conf/cupsd.conf man/*.man
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups/init
	@cd ${WRKINST}${SYSCONFDIR}/cups && cp -R * \
		${PREFIX}/share/examples/cups
	@rm -r ${WRKINST}${SYSCONFDIR}/cups ${WRKINST}/var/run \
	    ${WRKINST}/var/cache
	@${INSTALL_DATA} ${WRKBUILD}/init/cups.sh ${PREFIX}/share/cups/init
.for file in cups-enable cups-disable
	@sed s,y0y0y0,${LOCALBASE}, < ${FILESDIR}/${file} > \
		${PREFIX}/sbin/${file}
.endfor

.include <bsd.port.mk>
