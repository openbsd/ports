# $OpenBSD: Makefile,v 1.17 2012/06/15 08:32:17 ajacoutot Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	1.4.0
DISTNAME =	rednotebook-${MODPY_EGG_VERSION}
REVISION =	0

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
		textproc/py-chardet \
		textproc/py-yaml \
		www/py-webkitgtk \
		x11/gtk+2,-guic

.include <bsd.port.mk>
