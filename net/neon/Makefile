# $OpenBSD: Makefile,v 1.46 2019/07/12 20:48:33 sthen Exp $

COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.30.2
SHARED_LIBS +=  neon                 29.0     # 30.1
REVISION=		2

CATEGORIES=		net www devel

HOMEPAGE=		http://www.webdav.org/neon/

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += crypto expat iconv intl m proxy pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS =		net/libproxy

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_CERTUTIL="" \
			ac_cv_path_PK12UTIL=""

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/neon/

CONFIGURE_ARGS+=	--with-ca-bundle=/etc/ssl/cert.pem \
			--with-ssl=openssl \
			--with-expat \
			--without-pakchois \
			--enable-nls

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/neon
.for i in README NEWS BUGS TODO THANKS
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/neon
.endfor
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
