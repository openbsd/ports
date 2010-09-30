# $OpenBSD: Makefile,v 1.10 2010/09/30 11:06:18 jasper Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	1.1.1
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

RUN_DEPENDS =	::x11/py-gtk2 \
		::textproc/py-yaml \
		::www/py-webkitgtk \
		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>
