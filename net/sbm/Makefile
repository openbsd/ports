# $OpenBSD: Makefile,v 1.1.1.1 2016/03/14 12:26:07 jca Exp $

COMMENT =		simple bandwidth monitor
DISTNAME =		sbm-0.6
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
