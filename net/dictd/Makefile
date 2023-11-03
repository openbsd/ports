COMMENT-main=	Dictionary Server Protocol client
COMMENT-server=	Dictionary Server Protocol server

V=		1.13.1
DISTNAME=	dictd-$V

PKGNAME-main=	dictd-client-$V
PKGNAME-server=	dictd-server-$V
REVISION-main=	4
REVISION-server=3

CATEGORIES=	net education

HOMEPAGE=	https://www.dict.org

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# GPL v2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c maa z

SITES=		${SITE_SOURCEFORGE:=dict/}

LIB_DEPENDS=	devel/libmaa

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS=${LDFLAGS:Q}

MULTI_PACKAGES=	-main -server

EXAMPLEDIR=	${PREFIX}/share/examples/dictd

CFLAGS +=	-I/usr/local/include
LDFLAGS +=	-L/usr/local/lib

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${FILESDIR}/dict{,d}.conf \
	    ${EXAMPLEDIR}/

.include <bsd.port.mk>
