# $OpenBSD: Makefile,v 1.2 2010/11/20 17:22:43 espie Exp $

COMMENT =	management tool for sensitive data

DISTNAME =	keepassx-0.4.3
CATEGORIES =	security

HOMEPAGE =	http://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=keepassx/}

MODULES =	x11/qt4 devel/cmake

WANTLIB += QtGui QtXml X11 Xtst c m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info 

.include <bsd.port.mk>
