# $OpenBSD: Makefile,v 1.9 2010/10/02 06:18:00 ajacoutot Exp $

COMMENT=	graphical diff and merge tool

GNOME_VERSION=	1.4.0
GNOME_PROJECT=	meld

REVISION=	0

CATEGORIES=	textproc x11

HOMEPAGE=	http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python \
		textproc/intltool \
		x11/gnome

RUN_DEPENDS=	::x11/gnome/py-gnome \
		::x11/py-gtksourceview

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

SUBST_VARS+=	MODPY_SITEPKG
CONFIGURE_STYLE=none
NO_REGRESS=	yes
MAKE_ENV=	PYTHON=${MODPY_BIN}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/meld ${WRKSRC}/INSTALL

.include <bsd.port.mk>
