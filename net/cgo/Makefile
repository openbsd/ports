# $OpenBSD: Makefile,v 1.3 2014/04/20 04:23:46 bcallah Exp $

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20140220
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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgo ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cgo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
