# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:25 espie Exp $

COMMENT =	management tool for sensitive data

DISTNAME =	keepassx-0.4.3
REVISION =	2
CATEGORIES =	security

HOMEPAGE =	http://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=keepassx/}

MODULES =	x11/qt4 devel/cmake

WANTLIB += QtGui QtXml X11 Xtst c m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info 

.include <bsd.port.mk>
