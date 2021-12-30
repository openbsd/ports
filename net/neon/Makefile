# $OpenBSD: Makefile,v 1.48 2021/12/30 16:29:56 ajacoutot Exp $

COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.32.1

SHARED_LIBS +=  neon                 31.3     # 32.1

CATEGORIES=		net www devel

HOMEPAGE=		https://notroj.github.io/neon/

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += crypto expat iconv intl m proxy pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		textproc/xmlto

LIB_DEPENDS=		net/libproxy

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_CERTUTIL="" \
			ac_cv_path_PK12UTIL=""

CONFIGURE_ARGS=		--with-ca-bundle=/etc/ssl/cert.pem \
			--with-ssl=openssl \
			--with-expat \
			--without-pakchois \
			--enable-nls

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/neon/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
