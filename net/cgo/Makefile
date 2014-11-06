# $OpenBSD: Makefile,v 1.4 2014/11/06 19:05:24 bcallah Exp $

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20141022
CATEGORIES =	net

HOMEPAGE =	https://github.com/kieselsteini/cgo/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	http://devio.us/~bcallah/source/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	default

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/cgo.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cgo.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cgo
	${INSTALL_DATA} ${WRKSRC}/cgorc ${PREFIX}/share/examples/cgo

.include <bsd.port.mk>
