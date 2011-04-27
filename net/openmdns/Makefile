# $OpenBSD: Makefile,v 1.4 2011/04/27 14:01:46 landry Exp $

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
			MANDIR="${TRUEPREFIX}/man/cat"

.include <bsd.port.mk>
