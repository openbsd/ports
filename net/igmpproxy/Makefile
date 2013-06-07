# $OpenBSD: Makefile,v 1.9 2013/06/07 20:06:03 dcoppa Exp $

COMMENT =	Multicast router utilizing IGMP forwarding

VERSION =	0.1-beta2
DISTNAME =	igmpproxy-src-${VERSION}
PKGNAME =	igmpproxy-${VERSION:S/-beta/b/}
REVISION =	4
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=igmpproxy/}

HOMEPAGE =	http://igmpproxy.sourceforge.net/

MAINTAINER =	Markus Friedl <markus@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

USE_GMAKE =		Yes
USE_GROFF =		Yes

WRKDIST =		${WRKDIR}/igmpproxy/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/igmpproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/../doc/igmpproxy.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/../doc/igmpproxy.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/igmpproxy
	${INSTALL_DATA} ${WRKSRC}/igmpproxy.conf \
	    ${PREFIX}/share/examples/igmpproxy

.include <bsd.port.mk>
