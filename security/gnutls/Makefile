# $OpenBSD: Makefile,v 1.20 2009/07/24 14:37:23 sthen Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-2.6.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

SHARED_LIBS=	gnutls-extra	14.0 \
		gnutls-openssl	14.0 \
		gnutls		14.0 \
		gnutlsxx	14.0   # 37.1

HOMEPAGE=	http://www.gnutls.org/

# LGPLv2.1 / GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gpg-error ncurses readline z

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/ \
		ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/ \
		http://josefsson.org/gnutls/releases/ \
		http://ftp.linux.it/pub/mirrors/gnupg/gnutls/

MODULES=	devel/gettext

LIB_DEPENDS=	gcrypt.>=14::security/libgcrypt \
		tasn1::security/libtasn1 \
		lzo2::archivers/lzo2

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-included-libcfg \
		--with-lzo \
		--with-libtasn1-prefix=${LOCALBASE} \
		--with-libgcrypt-prefix=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
	  ${PREFIX}/share/examples/gnutls

.include <bsd.port.mk>
