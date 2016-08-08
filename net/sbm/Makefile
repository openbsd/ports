# $OpenBSD: Makefile,v 1.2 2016/08/08 10:53:52 jca Exp $

COMMENT =		simple bandwidth monitor
DISTNAME =		sbm-0.8
CATEGORIES =		net
HOMEPAGE =		http://git.2f30.org/sbm/
MAINTAINER =		Dimitris Papastamos <sin@2f30.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://dl.2f30.org/releases/

MAKE_FLAGS =            CC="${CC}" CFLAGS="-Wall ${CFLAGS}"
NO_TEST =		Yes

.include <bsd.port.mk>
