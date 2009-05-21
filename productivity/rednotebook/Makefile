# $OpenBSD: Makefile,v 1.1.1.1 2009/05/21 10:20:40 ajacoutot Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	0.7.0
DISTNAME =	rednotebook-${MODPY_EGG_VERSION}

CATEGORIES =	productivity

HOMEPAGE =	http://digitaldump.wordpress.com/projects/rednotebook/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=rednotebook/}

MODULES =	lang/python

RUN_DEPENDS =	::x11/py-gtk2 \
		::textproc/py-yaml \
		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>
