# $OpenBSD: Makefile,v 1.2 2015/07/15 19:27:52 ajacoutot Exp $

COMMENT =		Gopher protocol daemon

DISTNAME =		geomyidae-0.26.3
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://www.r-36.net/src/geomyidae/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}

MAKE_FLAGS =		CC="${CC}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		DESTDIR=""

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
