# $OpenBSD: Makefile,v 1.23 2011/10/13 15:23:03 ajacoutot Exp $

COMMENT=		internationalization tools

V=			0.50.0
DISTNAME=		intltool-${V}
CATEGORIES=		textproc

HOMEPAGE=		https://edge.launchpad.net/intltool

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/trunk/${V}/+download/

RUN_DEPENDS=		textproc/p5-XML-Parser \
			devel/gettext
BUILD_DEPENDS=		textproc/p5-XML-Parser

CONFIGURE_STYLE= 	gnu

USE_GROFF=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
