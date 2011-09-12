# $OpenBSD: Makefile,v 1.15 2011/09/12 12:07:26 jasper Exp $

COMMENT=	graphical diff and merge tool

GNOME_VERSION=	1.5.2
GNOME_PROJECT=	meld
REVISION=	0

CATEGORIES=	textproc x11

HOMEPAGE=	http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	lang/python \
		textproc/intltool \
		x11/gnome

RUN_DEPENDS=	x11/py-gtk2

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

SUBST_VARS+=	MODPY_SITEPKG
CONFIGURE_STYLE=none
NO_REGRESS=	yes
MAKE_ENV=	PYTHON=${MODPY_BIN}

MODPY_ADJ_FILES=bin/meld

pre-configure:
	${SUBST_CMD} ${WRKSRC}/INSTALL

.include <bsd.port.mk>
