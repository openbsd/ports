# $OpenBSD: Makefile,v 1.8 2018/01/01 19:30:43 anton Exp $

COMMENT =	fuzzy select anything

V =		2.0.1
DISTNAME =	pick-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/calleerlandsson/pick

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c curses

MASTER_SITES =	https://github.com/calleerlandsson/pick/releases/download/v${V}/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

pre-configure:
	sed -i 's,-Werror,,g' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
