# $OpenBSD: Makefile,v 1.7 2013/08/30 19:10:34 sthen Exp $

COMMENT =	SSL/SSH multiplexer

VERSION =	1.15
DISTNAME =	sslh-${VERSION}
CATEGORIES =	security net

HOMEPAGE =	http://www.rutschle.net/tech/sslh.shtml

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.rutschle.net/tech/

WANTLIB =	c config wrap
LIB_DEPENDS =	devel/libconfig

MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -DLIBWRAP -DLIBCONFIG" \
		LIBS="-L${LOCALBASE}/lib -lconfig -lwrap"
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslh
.for p in basic.cfg example.cfg
	${INSTALL_DATA} ${WRKSRC}/$p ${PREFIX}/share/examples/sslh
.endfor
.for p in sslh-fork sslh-select
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
