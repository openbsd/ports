# $OpenBSD: Makefile,v 1.2 2009/05/17 09:07:45 sthen Exp $

COMMENT =	Multicast router utilizing IGMP forwarding

VERSION =	0.1-beta2
DISTNAME =	igmpproxy-src-${VERSION}
PKGNAME =	igmpproxy-${VERSION:S/-beta/b/}
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=igmpproxy/}

HOMEPAGE =	http://igmpproxy.sourceforge.net/

MAINTAINER =	Markus Friedl <markus@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/igmpproxy/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/igmpproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/../doc/igmpproxy.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/../doc/igmpproxy.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/igmpproxy
	${INSTALL_DATA} ${WRKSRC}/igmpproxy.conf \
	    ${PREFIX}/share/examples/igmpproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/igmpproxy
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
	    ${PREFIX}/share/doc/igmpproxy
	@perl -pi -e 's,%%PREFIX%%,${TRUEPREFIX},g;' \
	    -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},g' \
	    ${PREFIX}/share/doc/igmpproxy/README.OpenBSD

.include <bsd.port.mk>
