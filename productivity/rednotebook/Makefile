# $OpenBSD: Makefile,v 1.22 2015/03/27 08:14:14 ajacoutot Exp $

COMMENT =		diary and journal application

MODPY_EGG_VERSION =	1.9.0
DISTNAME =		rednotebook-${MODPY_EGG_VERSION}
REVISION =		0

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
