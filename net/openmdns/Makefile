# $OpenBSD: Makefile,v 1.1.1.1 2011/03/14 20:47:34 landry Exp $

COMMENT =		MDNS/DNS-SD Daemon

DISTNAME =		openmdns-0.4
CATEGORIES =		net

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
