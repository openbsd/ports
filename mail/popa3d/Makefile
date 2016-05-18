# $OpenBSD: Makefile,v 1.2 2016/05/18 11:03:48 sthen Exp $

COMMENT =	tiny pop3 daemon

DISTNAME =	popa3d-1.0.3
REVISION =	0

CATEGORIES =	mail

HOMEPAGE =	http://www.openwall.com/popa3d/

# (Very) Simplified BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto

MASTER_SITES =	http://www.openwall.com/popa3d/

CFLAGS +=	-Wall -DHAVE_PROGNAME -DHAVE_OPENSSL
LIBS =		-lcrypto
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" LIBS="${LIBS}"
FAKE_FLAGS =	SBINDIR="${PREFIX}/libexec"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/popa3d ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/popa3d.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
