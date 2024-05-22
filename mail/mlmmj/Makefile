COMMENT=	mailing list manager

V=		1.4.5

DISTNAME=	mlmmj-${V}

CATEGORIES=	mail

HOMEPAGE=	https://codeberg.org/mlmmj/mlmmj

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c iconv

SITES=		https://codeberg.org/mlmmj/mlmmj/releases/download/RELEASE_${V:S/./_/g}/

BUILD_DEPENDS=	devel/kyua-cli

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-receive-strip=yes

# make sure ${WRKSRC}/include/unistr.h is included instead of
# /usr/local/include/unistr.h from libunistring
CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

DOCS=	README* TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
		${PREFIX}/share/doc/mlmmj/README.receive-strip

.include <bsd.port.mk>
