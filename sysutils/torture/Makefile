# $OpenBSD: Makefile,v 1.7 2013/06/02 14:30:42 beck Exp $

COMMENT =		set of kernel torture tools

DISTNAME =		torture-1.1
CATEGORIES =		sysutils

MAINTAINER =		Bob Beck <beck@obtuse.com>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

MASTER_SITES =	http://foad2.obtuse.com/pub/beck/

NO_TEST =	Yes
WANTLIB =	c

MAKE_FLAGS =	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
