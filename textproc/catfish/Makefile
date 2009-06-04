# $OpenBSD: Makefile,v 1.1.1.1 2009/06/04 02:03:39 landry Exp $

COMMENT =	versatile file searching tool

DISTNAME =	catfish-0.3.2
CATEGORIES =	textproc

HOMEPAGE =	http://www.twotoasts.de/index.php?/pages/catfish_summary.html

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://www.twotoasts.de/media/catfish/

MODULES=	lang/python
CONFIGURE_STYLE=none
USE_GMAKE=	Yes

RUN_DEPENDS =	::x11/py-gtk2 \
		::x11/dbus-python \
		::devel/desktop-file-utils \
		::devel/py-xdg
pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} -c Makefile.in Makefile
	cd ${WRKSRC} && ${SUBST_CMD} -c catfish.in catfish

.include <bsd.port.mk>

