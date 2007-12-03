# $OpenBSD: Makefile,v 1.14 2007/12/03 20:57:33 landry Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-2.0.4
CATEGORIES=	security
SHARED_LIBS=	gnutls-extra	13.0 \
		gnutls-openssl	13.0 \
		gnutls		13.0 \
		gnutlsxx	13.0   # 21.5

HOMEPAGE=	http://www.gnutls.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gpg-error intl ncurses readline z

EXTRACT_SUFX=           .tar.bz2

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/ \
		ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/ \
		http://josefsson.org/gnutls/releases/ \
		http://ftp.linux.it/pub/mirrors/gnupg/gnutls/

MODULES=	devel/gettext
LIB_DEPENDS=	gcrypt.>=13::security/libgcrypt \
		opencdk.>=9::security/opencdk

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-included-libtasn1 \
		--with-included-libcfg \
		--with-included-lzo \
		--with-libgcrypt-prefix=${LOCALBASE} \
		--with-libopencdk-prefix=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
	  ${PREFIX}/share/examples/gnutls

.include <bsd.port.mk>
