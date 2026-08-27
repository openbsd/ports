COMMENT=	mailing list manager

V=		2.1.0

DISTNAME=	mlmmj-${V}

CATEGORIES=	mail

HOMEPAGE=	https://codeberg.org/mlmmj/mlmmj

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c iconv

SITES=		https://codeberg.org/mlmmj/mlmmj/releases/download/RELEASE_${V:S/./_/g}/

BUILD_DEPENDS=	devel/kyua-cli \
		devel/atf

LIB_DEPENDS=	converters/libiconv

TEST_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-receive-strip=yes \
		--enable-tests

CONFIGURE_ENV=	TMPDIR="${WRKBUILD}"

# make sure ${WRKSRC}/include/unistr.h is included before
# ${LOCALBASE}include/unistr.h from libunistring
CFLAGS+=	-I${WRKSRC}/include -I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -liconv
MAKE_ENV+=	LDFLAGS="${LDFLAGS}"

PORTHOME=	${WRKBUILD}

DOCS=	README* TUNABLES.md FAQ

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
		${PREFIX}/share/doc/mlmmj/README.receive-strip.md

.include <bsd.port.mk>
