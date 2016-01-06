# $OpenBSD: Makefile,v 1.13 2016/01/06 20:02:19 jasper Exp $

COMMENT =	SSL/SSH multiplexer

GH_ACCOUNT =	yrutschle
GH_PROJECT =	sslh
V =		1.17
GH_TAGNAME =	v$V
CATEGORIES =	security net
REVISION =	0

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
