# $OpenBSD: Makefile,v 1.18 2018/01/11 19:27:07 rpe Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.7
CATEGORIES =		net
REVISION =		0

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		http://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.haesbaert.org/openmdns/releases/ \
			http://x61.com.ar/mirrors/openmdns/

WANTLIB +=		c event util

WRKDIST =		${WRKDIR}/mdnsd

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man"

NO_TEST =		Yes

.include <bsd.port.mk>
