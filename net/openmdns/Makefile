# $OpenBSD: Makefile,v 1.17 2017/03/11 13:00:35 gonzalo Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.7
CATEGORIES =		net

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
