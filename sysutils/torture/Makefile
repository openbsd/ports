# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:33 espie Exp $

COMMENT =		set of kernel torture tools

DISTNAME =		torture-1.0
EXTRACT_SUFX =		.tgz
CATEGORIES =		sysutils

MAINTAINER =		Thordur I. Bjornsson <thib@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

MASTER_SITES =	http://notendur.hi.is/~thb45/

NO_TEST =	Yes
WANTLIB =	c

MAKE_FLAGS =	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
