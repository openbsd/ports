COMMENT=	NetBIOS name network scanner

GH_ACCOUNT=	resurrecting-open-source-projects
GH_PROJECT=	nbtscan
GH_TAGNAME=	1.5.1
REVISION=	2

CATEGORIES=	net

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

NO_TEST=	Yes
CONFIGURE_STYLE= gnu
ALL_TARGET=	nbtscan

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
