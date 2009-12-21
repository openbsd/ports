# $OpenBSD: Makefile,v 1.7 2009/12/21 21:03:56 ajacoutot Exp $

COMMENT =	diary and journal application

MODPY_EGG_VERSION =	0.8.9
DISTNAME =	rednotebook-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME}p1

CATEGORIES =	productivity

HOMEPAGE =	http://rednotebook.sourceforge.net 

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
		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>
