# $OpenBSD: Makefile,v 1.9 2015/09/12 20:25:21 sthen Exp $

COMMENT =		set of kernel torture tools

DISTNAME =		torture-1.1
REVISION =		1
CATEGORIES =		sysutils

MAINTAINER =		Bob Beck <beck@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

MASTER_SITES =	http://foad2.obtuse.com/pub/beck/

NO_TEST =	Yes
WANTLIB =	c

MAKE_FLAGS =	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
