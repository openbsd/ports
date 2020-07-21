# $OpenBSD: Makefile,v 1.24 2020/07/21 14:25:09 bket Exp $

COMMENT =	SSL/SSH multiplexer

DISTNAME =	sslh-v1.21b
PKGNAME =	${DISTNAME:S/-v/-/}

CATEGORIES =	security net

HOMEPAGE =	https://www.rutschle.net/tech/sslh/README.html

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c config pcreposix

MASTER_SITES =	https://www.rutschle.net/tech/sslh/

LIB_DEPENDS =	devel/libconfig \
		devel/pcre
TEST_DEPENDS =	devel/p5-Conf-Libconfig \
		net/p5-IO-Socket-INET6

MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lconfig -lpcreposix" \
		MAN=sslh.8

USE_GMAKE =	Yes

PORTHOME =	${WRKDIST}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/sslh
	${INSTALL_MAN} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslh
.for p in basic.cfg example.cfg
	${INSTALL_DATA} ${WRKSRC}/$p ${PREFIX}/share/examples/sslh
.endfor
.for p in sslh-fork sslh-select
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
