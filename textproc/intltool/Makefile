# $OpenBSD: Makefile,v 1.17 2010/10/18 13:44:30 jasper Exp $

COMMENT=		internationalization tool

GNOME_PROJECT=		intltool
GNOME_VERSION=		0.40.6
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

RUN_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gettext-*:devel/gettext
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser

CONFIGURE_STYLE= 	gnu

USE_X11=		No
NO_BUILD=		Yes # avoid recursive dependency
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
