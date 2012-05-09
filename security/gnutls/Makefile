# $OpenBSD: Makefile,v 1.50 2012/05/09 08:06:53 ajacoutot Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-2.12.19
CATEGORIES=	security

SHARED_LIBS +=  gnutls               18.2     # 48.3
SHARED_LIBS +=  gnutlsxx             17.0     # 27.0
SHARED_LIBS +=  gnutls-extra         18.1     # 48.3
SHARED_LIBS +=  gnutls-openssl       17.0     # 27.0

HOMEPAGE=	http://www.gnutls.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@bsdfrog.org>

# LGPLv3 - GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp hogweed lzo2 m ncurses nettle p11-kit pthread
WANTLIB += readline stdc++ tasn1 z

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_GNU:=gnutls/}

MODULES=	devel/gettext

LIB_DEPENDS=	security/libtasn1 \
		archivers/lzo2 \
		security/libnettle \
		security/p11-kit

USE_LIBTOOL=	Yes

# regression tests need this
PORTHOME=	${WRKDIR}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-guile \
		--disable-valgrind-tests \
		--with-included-libcfg \
		--with-lzo \
		--with-libtasn1-prefix=${LOCALBASE} \
		--with-packager="OpenBSD Ports"

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' \
		${WRKSRC}/{,lib/,libextra/}configure

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
