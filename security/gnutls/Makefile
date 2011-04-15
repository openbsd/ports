# $OpenBSD: Makefile,v 1.35 2011/04/15 16:09:39 ajacoutot Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-2.12.2
CATEGORIES=	security

SHARED_LIBS +=  gnutls               17.0     # 44.10
SHARED_LIBS +=  gnutlsxx             17.0     # 27.0
SHARED_LIBS +=  gnutls-extra         17.0     # 44.10
SHARED_LIBS +=  gnutls-openssl       17.0     # 27.0

HOMEPAGE=	http://www.gnutls.org/

# LGPLv2.1 / GPLv3 (GnuTLS)
# GPLv2+ - BSD-like (PaKChoiS)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp hogweed lzo2 m ncurses nettle pthread readline
WANTLIB += stdc++ tasn1 z

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/ \
		ftp://ftp.gnupg.org/gcrypt/alpha/gnutls/ \
		http://josefsson.org/gnutls/releases/ \
		http://ftp.linux.it/pub/mirrors/gnupg/gnutls/

MODULES=	devel/gettext

LIB_DEPENDS=	security/libtasn1 \
		archivers/lzo2 \
		security/libnettle

USE_LIBTOOL=	Yes

# regression tests need this
PORTHOME=	${WRKDIR}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-silent-rules \
		--disable-guile \
		--with-included-libcfg \
		--with-lzo \
		--with-libtasn1-prefix=${LOCALBASE}

# GnuTLS uses a modified bundled libpakchois, see ChangeLog:
# "Added a modified pakchois library (to open arbitrary pkcs11 modules).
# Current gnutls works only with this one."
CONFIGURE_ARGS+=--with-included-pakchois

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' \
		${WRKSRC}/{,lib/,libextra/}configure
	${SUBST_CMD} ${WRKSRC}/lib/pakchois/pakchois.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
	  ${PREFIX}/share/examples/gnutls
	# needed by at least:
	# devel/libvmime, security/prelude/manager, textproc/iksemel
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${PREFIX}/bin

.include <bsd.port.mk>
