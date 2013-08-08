# $OpenBSD: Makefile,v 1.1.1.1 2013/08/08 09:59:01 bcallah Exp $

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20130722
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

.include <bsd.port.mk>
