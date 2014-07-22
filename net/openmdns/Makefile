# $OpenBSD: Makefile,v 1.13 2014/07/22 10:55:41 ajacoutot Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.5
REVISION =		5
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
