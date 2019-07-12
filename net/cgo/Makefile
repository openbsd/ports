# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:24 sthen Exp $

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20180123

CATEGORIES =	net

GH_ACCOUNT =	kieselsteini
GH_PROJECT =	cgo
GH_COMMIT =	ca69bbb7183e45f6ef67b86931b65ae4c8dde6f9

# ISC
PERMIT_PACKAGE =	Yes

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
