COMMENT=	automates xrandr calls based on connect devices

CATEGORIES=	x11 sysutils

GH_ACCOUNT=	phillipberndt
GH_PROJECT=	autorandr
GH_TAGNAME=	1.11
MODPY_EGG_VERSION=	${GH_TAGNAME}.post1
REVISION=		0

# GPLv3+
PERMIT_PACKAGE=	Yes

MAINTAINER=	Ashton Fagg <ashton@fagg.id.au>

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

# No tests provided by upstream.
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/autorandr.1 ${PREFIX}/man/man1/autorandr.1

.include <bsd.port.mk>
