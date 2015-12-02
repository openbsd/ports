# $OpenBSD: Makefile,v 1.7 2015/12/02 13:08:30 jasper Exp $

COMMENT =	management tool for sensitive data

V =		0.4.3
DISTNAME =	keepassx-$V
REVISION =	2
CATEGORIES =	security

HOMEPAGE =	http://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.keepassx.org/releases/$V/

MODULES =	x11/qt4 devel/cmake

WANTLIB += QtGui QtXml X11 Xtst c m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info

.include <bsd.port.mk>
