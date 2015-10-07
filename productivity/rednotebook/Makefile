# $OpenBSD: Makefile,v 1.24 2015/10/07 11:38:42 jca Exp $

COMMENT =		diary and journal application

MODPY_EGG_VERSION =	1.10.2
DISTNAME =		rednotebook-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		http://rednotebook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rednotebook/}

NO_TEST =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/xdg-utils \
			textproc/py-chardet \
			textproc/py-yaml \
			www/py-webkitgtk \
			x11/gtk+3,-guic

.include <bsd.port.mk>
