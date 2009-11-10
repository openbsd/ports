# $OpenBSD: Makefile,v 1.1.1.1 2009/11/10 14:33:50 pea Exp $

COMMENT =	perl module for mon

DISTNAME = 	mon-client-${V}

# To avoid the name p5-mon-client-${V}
PKGNAME = 	${DISTNAME}

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
