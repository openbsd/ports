# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:26 sthen Exp $

COMMENT =		Gopher protocol daemon

DISTNAME =		geomyidae-v0.34
PKGNAME =		${DISTNAME:S/-v/-/}
EXTRACT_SUFX =		.tgz

CATEGORIES =		net

HOMEPAGE =		http://git.r-36.net/scm/geomyidae

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

MASTER_SITES =		ftp://bitreich.org/releases/geomyidae/

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS} -Wall"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/geomyidae ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/geomyidae.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geomyidae
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/geomyidae
	cd ${WRKSRC} && ${INSTALL_DATA} CGI README \
	    ${PREFIX}/share/doc/geomyidae
	cd ${WRKSRC} && ${INSTALL_DATA} index.gph \
	    ${PREFIX}/share/examples/geomyidae
	touch ${PREFIX}/share/examples/geomyidae/log

.include <bsd.port.mk>
