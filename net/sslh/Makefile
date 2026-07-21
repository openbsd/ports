COMMENT =	SSL/SSH multiplexer

DISTNAME =	sslh-v2.3.1
PKGNAME =	${DISTNAME:S/-v/-/}

CATEGORIES =	security net

HOMEPAGE =	https://www.rutschle.net/tech/sslh/README.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c config ev m pcre2-8

SITES =		https://www.rutschle.net/tech/sslh/

LIB_DEPENDS =	devel/libconfig \
		devel/libev \
		devel/pcre2
TEST_DEPENDS =	devel/p5-Conf-Libconfig \
		net/p5-IO-Socket-INET6

CONFIGURE_STYLE =	gnu
USE_GMAKE =	Yes

# XXX not passed through properly from autoconf
MAKE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PORTHOME =	${WRKDIST}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/sslh
	${INSTALL_MAN} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslh
.for p in basic.cfg example.cfg udp.cfg
	${INSTALL_DATA} ${WRKSRC}/$p ${PREFIX}/share/examples/sslh
.endfor
.for p in sslh-fork sslh-select sslh-ev
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

do-test:
	cd ${WRKSRC}/t && ./run

.include <bsd.port.mk>
