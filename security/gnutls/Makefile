# $OpenBSD: Makefile,v 1.8 2005/02/21 17:15:43 alek Exp $

COMMENT=		"GNU Transport Layer Security library"

VERSION=		1.0.20
DISTNAME=		gnutls-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

HOMEPAGE=		http://www.gnutls.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gpg-error intl z

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/gnutls/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/gnutls/ \
		http://sunsite.dk/pub/security/gcrypt/gnutls/ \
		http://ftp.linux.it/pub/mirrors/gnupg/gnutls/

MODULES=	converters/libiconv
LIB_DEPENDS=	gcrypt.12::security/libgcrypt \
		opencdk.8::security/opencdk

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-included-libtasn1 \
			--with-included-libcfg \
			--with-included-lzo
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
	  ${PREFIX}/share/examples/gnutls

.include <bsd.port.mk>
