# $OpenBSD: Makefile,v 1.8 2017/03/24 12:59:40 abieber Exp $

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20170313

CATEGORIES =	net

GH_ACCOUNT =	kieselsteini
GH_PROJECT =	cgo
GH_COMMIT =	c1ed33645f4c2ee1d731258d8a2dc6cedb35eb90

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	default

NO_TEST =	Yes

pre-configure:
	sed -i "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/cgo.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cgo.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cgo
	${INSTALL_DATA} ${WRKSRC}/cgorc ${PREFIX}/share/examples/cgo

.include <bsd.port.mk>
