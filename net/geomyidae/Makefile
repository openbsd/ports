COMMENT =		Gopher protocol daemon

DISTNAME =		geomyidae-v0.51
PKGNAME =		${DISTNAME:S/-v/-/}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://git.r-36.net/scm/geomyidae

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c tls

SITES =			ftp://bitreich.org/releases/geomyidae/

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS} -Wall" \
			MANDIR="${PREFIX}/man/man8"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geomyidae
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/geomyidae
	cd ${WRKSRC} && ${INSTALL_DATA} CGI.md README \
	    ${PREFIX}/share/doc/geomyidae
	cd ${WRKSRC} && ${INSTALL_DATA} index.gph \
	    ${PREFIX}/share/examples/geomyidae
	touch ${PREFIX}/share/examples/geomyidae/log

.include <bsd.port.mk>
