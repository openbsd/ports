# $OpenBSD: Makefile,v 1.18 2012/12/15 13:50:53 ajacoutot Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	1.6.3
DISTNAME =	rednotebook-${MODPY_EGG_VERSION}

CATEGORIES =	productivity

HOMEPAGE =	http://rednotebook.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=rednotebook/}

NO_REGRESS =	Yes

MODULES =	lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils \
		textproc/py-chardet \
		textproc/py-yaml \
		www/py-webkitgtk \
		x11/gtk+2,-guic

.include <bsd.port.mk>
