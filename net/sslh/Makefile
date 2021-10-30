# $OpenBSD: Makefile,v 1.26 2021/10/30 14:51:25 bket Exp $

COMMENT =	SSL/SSH multiplexer

DISTNAME =	sslh-v1.22c
PKGNAME =	${DISTNAME:S/-v/-/}

CATEGORIES =	security net

HOMEPAGE =	https://www.rutschle.net/tech/sslh/README.html

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c config m pcre2-8

MASTER_SITES =	https://www.rutschle.net/tech/sslh/

LIB_DEPENDS =	devel/libconfig \
		devel/pcre2
TEST_DEPENDS =	devel/p5-Conf-Libconfig \
		net/p5-IO-Socket-INET6

MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -DLIBPCRE" \
		LIBS="-L${LOCALBASE}/lib -lconfig -lm -lpcre2-8" \
		MAN=sslh.8

USE_GMAKE =	Yes

PORTHOME =	${WRKDIST}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/sslh
	${INSTALL_MAN} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslh
.for p in basic.cfg example.cfg udp.cfg
	${INSTALL_DATA} ${WRKSRC}/$p ${PREFIX}/share/examples/sslh
.endfor
.for p in sslh-fork sslh-select
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
