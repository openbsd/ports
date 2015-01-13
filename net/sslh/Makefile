# $OpenBSD: Makefile,v 1.9 2015/01/13 11:15:04 sthen Exp $

COMMENT =	SSL/SSH multiplexer

GH_ACCOUNT =	yrutschle
GH_PROJECT =	sslh
GH_COMMIT =	9d2deff6ad51622e2de1788af1d1465c5b37075e
V =		1.16
GH_TAGNAME =	v$V
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME:S/v//}
CATEGORIES =	security net

HOMEPAGE =	http://www.rutschle.net/tech/sslh.shtml

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c config
LIB_DEPENDS =	devel/libconfig

MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -DLIBCONFIG" \
		LIBS="-L${LOCALBASE}/lib -lconfig" VERSION=$V
NO_TEST =	Yes

do-configure:
	printf '#ifndef _VERSION_H_\n#define _VERSION_H_\n#define VERSION "$V"\n#endif\n' > ${WRKSRC}/version.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sslh
.for p in basic.cfg example.cfg
	${INSTALL_DATA} ${WRKSRC}/$p ${PREFIX}/share/examples/sslh
.endfor
.for p in sslh-fork sslh-select
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
