# $OpenBSD: Makefile,v 1.3 2011/03/15 06:54:26 ajacoutot Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.4
CATEGORIES =		net

REVISION =		1

MAINTAINER =		Gonzalo L. R. <gonzalo@x61.com.ar>

HOMEPAGE =		http://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.haesbaert.org/openmdns/releases/

WANTLIB += 		c event util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/cat"

.include <bsd.port.mk>
