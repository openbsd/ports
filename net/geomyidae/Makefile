# $OpenBSD: Makefile,v 1.4 2018/02/16 21:11:27 jung Exp $

COMMENT =		Gopher protocol daemon

DISTNAME =		geomyidae-0.31

CATEGORIES =		net

HOMEPAGE =		http://git.r-36.net/geomyidae/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/snapshot/

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
