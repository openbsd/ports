# $OpenBSD: Makefile,v 1.2 2011/03/14 21:40:50 ajacoutot Exp $

COMMENT =		MDNS/DNS-SD daemon

DISTNAME =		openmdns-0.4
CATEGORIES =		net

REVISION =		0

MAINTAINER =		Gonzalo L. R. <gonzalo@x61.com.ar>

HOMEPAGE =		http://www.haesbaert.org/openmdns/

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.haesbaert.org/openmdns/releases/

NO_REGRESS =		Yes

WANTLIB += 		c event util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/cat"

.include <bsd.port.mk>
