COMMENT =	perl module for mon

DISTNAME = 	mon-client-${V}

PKGNAME = 	p5-Mon-${V}
REVISION =	4

MODULES = 	cpan
PKG_ARCH = 	*

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
