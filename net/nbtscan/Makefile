COMMENT=	NetBIOS name network scanner

GH_ACCOUNT=	resurrecting-open-source-projects
GH_PROJECT=	nbtscan
GH_TAGNAME=	1.7.2

CATEGORIES=	net

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

NO_TEST=	Yes
CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
#ALL_TARGET=	nbtscan

xdo-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbtscan ${PREFIX}/bin

.include <bsd.port.mk>
