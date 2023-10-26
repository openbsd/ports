COMMENT-main=	Dictionary Server Protocol client
COMMENT-server=	Dictionary Server Protocol server

V=		1.13.1
DISTNAME=	dictd-$V

PKGNAME-main=	dictd-client-$V
PKGNAME-server=	dictd-server-$V

CATEGORIES=	net education

HOMEPAGE=	https://www.dict.org

# GPL v2
PERMIT_PACKAGE=	Yes
WANTLIB=		c maa z

SITES=		${SITE_SOURCEFORGE:=dict/}

LIB_DEPENDS=	devel/libmaa

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS=${LDFLAGS:Q}

MULTI_PACKAGES=	-main -server

NO_TEST=	Yes

EXAMPLEDIR=	${PREFIX}/share/examples/dictd

CFLAGS +=	-I/usr/local/include
LDFLAGS +=	-L/usr/local/lib

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLEDIR}/

.include <bsd.port.mk>
