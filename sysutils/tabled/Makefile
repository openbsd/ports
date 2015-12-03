# $OpenBSD: Makefile,v 1.23 2015/12/03 21:24:32 sthen Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
REVISION=	5

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
