# $OpenBSD: Makefile,v 1.3 2017/05/30 10:26:07 anton Exp $

COMMENT =	fuzzy select anything

V =		1.6.1
DISTNAME =	pick-${V}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/calleerlandsson/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/calleerlandsson/pick/releases/download/v${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
