COMMENT=	Twitter script for irssi

V=		2.8.0pl20190726
DISTNAME=	twirssi-$V
CATEGORIES=	net

HOMEPAGE=	https://www.twirssi.com/

# GPLv2
PERMIT_PACKAGE=	Yes

GH_ACCOUNT =	gedge
GH_PROJECT =	twirssi
GH_COMMIT =	630a7019777911054e00dcc6b1ecb66dc1fed318

RUN_DEPENDS=	converters/p5-JSON-Any \
		net/irssi \
		net/p5-Net-Twitter \
		net/p5-Twitter-API \
		www/p5-LWP-Protocol-https \
		www/p5-WWW-Shorten

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

SCRIPT_DATA_DIR=	${PREFIX}/share/twirssi
SUBST_VARS=		SCRIPT_DATA_DIR

do-install:
	${INSTALL_DATA_DIR} ${SCRIPT_DATA_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/twirssi.pl \
		${SCRIPT_DATA_DIR}/twirssi.pl

.include <bsd.port.mk>
