# $OpenBSD: Makefile,v 1.4 2015/06/12 19:42:39 czarkoff Exp $

COMMENT =		golang websocket package

VERSION =		0.0
DISTNAME =		go-websocket-${VERSION}
GH_COMMIT =		97d8e4e174133a4d1d2171380e510eb4dea8f5ea
GH_ACCOUNT =		golang
GH_PROJECT =		net
REVISION =		2

CATEGORIES =		net www

HOMEPAGE =		http://golang.org/x/net/websocket/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

GO_PKG =		pkg/openbsd_${MACHINE_ARCH:S/i386/386/}
MODGO_TYPE =		lib
MODGO_SUBDIR =		${WRKDIST}/websocket
ALL_TARGET =		golang.org/x/net/websocket

.include <bsd.port.mk>
