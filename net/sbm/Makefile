# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:48 sthen Exp $

COMMENT =		simple bandwidth monitor
DISTNAME =		sbm-0.8
CATEGORIES =		net
HOMEPAGE =		http://git.2f30.org/sbm/
MAINTAINER =		Dimitris Papastamos <sin@2f30.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		http://dl.2f30.org/releases/

MAKE_FLAGS =            CC="${CC}" CFLAGS="-Wall ${CFLAGS}"
NO_TEST =		Yes

.include <bsd.port.mk>
