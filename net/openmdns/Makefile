# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:50 espie Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.5
REVISION =		0
CATEGORIES =		net

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		http://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.haesbaert.org/openmdns/releases/ \
			http://x61.com.ar/mirrors/openmdns/

WANTLIB +=		c event util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
