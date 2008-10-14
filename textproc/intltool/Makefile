# $OpenBSD: Makefile,v 1.15 2008/10/14 09:14:19 ajacoutot Exp $

COMMENT=		internationalization tool

GNOME_PROJECT=		intltool
GNOME_VERSION=		0.40.5
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

NO_BUILD=		Yes # avoid recursive dependency
PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intltool
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/intltool

.include <bsd.port.mk>
