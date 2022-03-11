COMMENT=		internationalization tools

V=			0.51.0
DISTNAME=		intltool-${V}
REVISION=		2
CATEGORIES=		textproc

HOMEPAGE=		https://edge.launchpad.net/intltool

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/trunk/${V}/+download/

BUILD_DEPENDS=		textproc/p5-XML-Parser

RUN_DEPENDS=		devel/gettext,-tools \
			textproc/p5-XML-Parser

CONFIGURE_STYLE= 	gnu

USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
