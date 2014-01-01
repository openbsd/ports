# $OpenBSD: Makefile,v 1.8 2014/01/01 20:46:28 naddy Exp $

COMMENT =	perl module for mon

DISTNAME = 	mon-client-${V}

PKGNAME = 	p5-Mon-${V}
REVISION =	3

MODULES = 	cpan

DISTFILES = 	mon-client-${V}.tar.gz \
		mon-${V}.tar.gz

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/lib/mon/
		${INSTALL_SCRIPT} ${WRKDIR}/mon-${V}/clients/mon.cgi \
			${PREFIX}/lib/mon/mon.cgi
		${INSTALL_SCRIPT} ${WRKDIR}/mon-${V}/clients/monshow \
			${PREFIX}/bin/
		${INSTALL_SCRIPT} ${WRKDIR}/mon-${V}/clients/moncmd \
			${PREFIX}/bin/
		${INSTALL_MAN} ${WRKDIR}/mon-${V}/doc/moncmd.1 \
			${PREFIX}/man/man1/
		${INSTALL_MAN} ${WRKDIR}/mon-${V}/doc/monshow.1 \
			${PREFIX}/man/man1/

.include <bsd.port.mk>
