# $OpenBSD: Makefile,v 1.12 2011/04/15 06:32:42 jasper Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	1.1.4
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

RUN_DEPENDS =	x11/py-gtk2 \
		textproc/py-yaml \
		www/py-webkitgtk \
		devel/desktop-file-utils

.include <bsd.port.mk>
