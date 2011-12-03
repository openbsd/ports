# $OpenBSD: Makefile,v 1.15 2011/12/03 23:04:37 ajacoutot Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	1.1.4
DISTNAME =	rednotebook-${MODPY_EGG_VERSION}
REVISION =	2

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

RUN_DEPENDS =	x11/py-gtk2 \
		textproc/py-yaml \
		www/py-webkitgtk \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
