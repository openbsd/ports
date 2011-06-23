# $OpenBSD: Makefile,v 1.5 2011/06/23 22:50:28 naddy Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.5
CATEGORIES =		net

MAINTAINER =		Gonzalo L. R. <gonzalo@x61.com.ar>

HOMEPAGE =		http://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.haesbaert.org/openmdns/releases/ \
			http://x61.com.ar/openmdns/

WANTLIB += 		c event util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man"

.include <bsd.port.mk>
