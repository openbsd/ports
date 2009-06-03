# $OpenBSD: Makefile,v 1.1.1.1 2009/06/03 18:23:27 landry Exp $

COMMENT=	graphical diff and merge tool

DISTNAME=	meld-1.3.0
CATEGORIES=	textproc x11

HOMEPAGE=	http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/meld/1.3/}

USE_GMAKE=	Yes

MODULES=	lang/python

BUILD_DEPENDS+=	::textproc/rarian

RUN_DEPENDS=	::x11/gnome/py-gnome \
		::x11/gnome/yelp \
		::devel/desktop-file-utils \
		::x11/py-gtksourceview

SUBST_VARS+=	MODPY_SITEPKG
MAKE_FILE=	GNUmakefile
CONFIGURE_STYLE=none
NO_REGRESS=	yes
MAKE_ENV=	PYTHON=${MODPY_BIN}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meld ${WRKSRC}/INSTALL

.include <bsd.port.mk>
