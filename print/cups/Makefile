# $OpenBSD: Makefile,v 1.8 2005/12/06 23:23:44 mbalmer Exp $

COMMENT=		"Common Unix Printing System"

VERSION=		1.1.23
DISTNAME=		cups-${VERSION}-source
PKGNAME=		${DISTNAME:S/-source//}p6
CATEGORIES=		print sysutils

HOMEPAGE=		http://www.cups.org/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m z

MASTER_SITES=		http://ftp.easysw.com/pub/cups/${VERSION}/ \
			http://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp2.easysw.com/pub/cups/${VERSION}/ \
			ftp://ftp3.easysw.com/pub/cups/${VERSION}/

EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		png.3::graphics/png \
			jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff

FAKE_FLAGS=		BINMODE=${BINMODE} \
			SHAREMODE=${SHAREMODE}

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
			--without-python 

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			  -I${LOCALBASE}/include/libpng" \
			DSOFLAGS="-L${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		"-I${LOCALBASE}/include" \
			"-I${LOCALBASE}/include/libpng"

WRKDIST=		${WRKDIR}/${DISTNAME:S/-source//}

REGRESS_FLAGS=		LOCALBASE=${LOCALBASE}

REGRESS_DEPENDS=	::print/htmldoc
REGRESS_IS_INTERACTIVE=	Yes

FLAVORS=	no_gnutls
FLAVOR?=

.if ${FLAVOR:L:Mno_gnutls}
WANTLIB+=	crypto ssl
.else
MODULES=	devel/gettext

CONFIGURE_ARGS+= --disable-openssl --enable-gnutls
LIB_DEPENDS+=	gnutls.12::security/gnutls
WANTLIB+=	gpg-error.1 gcrypt.12
.endif

post-configure:
.for i in cups.sh config.h cups-config conf/cupsd.conf
	@mv ${WRKBUILD}/${i} ${WRKBUILD}/${i}.bak
	@sed -e s#\$${DESTDIR}##g ${WRKBUILD}/${i}.bak > ${WRKBUILD}/${i}
.endfor

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups
	@cd ${WRKINST}${SYSCONFDIR}/cups && cp -Rp * \
		${PREFIX}/share/examples/cups
	@${INSTALL_DATA} ${WRKBUILD}/cups.sh ${PREFIX}/share/cups
.for file in cups-enable cups-disable
	@sed s,y0y0y0,${LOCALBASE}, < ${FILESDIR}/${file} > \
		${PREFIX}/sbin/${file}
.endfor
	@${INSTALL_DATA} ${FILESDIR}/foomatic-rip \
		${PREFIX}/libexec/cups/filter/

.include <bsd.port.mk>
