COMMENT=	redirect programs through one or more proxies

VERSION=	4.17
DISTNAME=	proxychains-ng-${VERSION}
CATEGORIES=	net security
GH_ACCOUNT=	rofl0r
GH_PROJECT=	proxychains-ng
GH_TAGNAME=	v${VERSION}

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=		c pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple

NO_TEST=	Yes


post-install:
	${INSTALL_DATA} -D ${WRKSRC}/src/proxychains.conf \
		${PREFIX}/share/examples/proxychains/proxychains.conf
	${INSTALL_DATA} -D ${WRKSRC}/README \
		${PREFIX}/share/examples/proxychains/README

.include <bsd.port.mk>
