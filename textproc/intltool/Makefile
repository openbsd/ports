# $OpenBSD: Makefile,v 1.27 2013/03/11 11:42:42 espie Exp $

COMMENT=		internationalization tools

V=			0.50.2
DISTNAME=		intltool-${V}
CATEGORIES=		textproc

HOMEPAGE=		https://edge.launchpad.net/intltool

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/trunk/${V}/+download/

RUN_DEPENDS=		textproc/p5-XML-Parser \
			devel/gettext
BUILD_DEPENDS=		textproc/p5-XML-Parser

CONFIGURE_STYLE= 	gnu

USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
