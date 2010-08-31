# $OpenBSD: Makefile,v 1.28 2010/08/31 20:01:41 ajacoutot Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-2.10.1
CATEGORIES=	security

SHARED_LIBS=	gnutls-extra	16.0 \
		gnutls-openssl	16.0 \
		gnutls		16.0 \
		gnutlsxx	16.0   # .42.9

HOMEPAGE=	http://www.gnutls.org/

# LGPLv2.1 / GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gpg-error lzo2 m ncurses readline stdc++ tasn1 z

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/ \
		ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/ \
		http://josefsson.org/gnutls/releases/ \
		http://ftp.linux.it/pub/mirrors/gnupg/gnutls/

MODULES=	devel/gettext

LIB_DEPENDS=	::security/libgcrypt \
		::security/libtasn1 \
		::archivers/lzo2

USE_LIBTOOL=	Yes

# regression tests need this
PORTHOME=	${WRKDIR}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-guile \
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
