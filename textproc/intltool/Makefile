# $OpenBSD: Makefile,v 1.28 2015/03/25 16:22:18 ajacoutot Exp $

COMMENT=		internationalization tools

V=			0.51.0
DISTNAME=		intltool-${V}
CATEGORIES=		textproc

HOMEPAGE=		https://edge.launchpad.net/intltool

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/trunk/${V}/+download/

BUILD_DEPENDS=		textproc/p5-XML-Parser

RUN_DEPENDS=		devel/gettext \
			textproc/p5-XML-Parser

CONFIGURE_STYLE= 	gnu

USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
