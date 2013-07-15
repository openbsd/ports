# $OpenBSD: Makefile,v 1.16 2013/07/15 20:47:01 espie Exp $

COMMENT=		Open Crypto Development Kit

VERSION=		0.6.6
DISTNAME=		opencdk-${VERSION}
CATEGORIES=		security
SHARED_LIBS=		opencdk	9.0	# .10.5

REVISION=		1

HOMEPAGE=		http://www.gnutls.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		gpg-error z gcrypt>=13

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/opencdk/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/gnutls/opencdk/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/gnutls/opencdk/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/gnutls/opencdk/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgcrypt

# for !shared...
LIB_DEPENDS +=	security/libgpg-error


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libgcrypt-prefix=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opencdk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opencdk
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/opencdk
	${INSTALL_DATA} ${WRKSRC}/doc/opencdk-api.html \
		${PREFIX}/share/doc/opencdk
	${INSTALL_DATA} ${WRKSRC}/tests/*.c \
		${PREFIX}/share/examples/opencdk
	${INSTALL_DATA} ${WRKSRC}/tests/*.gpg \
		${PREFIX}/share/examples/opencdk

.include <bsd.port.mk>
