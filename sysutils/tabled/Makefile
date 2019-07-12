# $OpenBSD: Makefile,v 1.24 2019/07/12 20:49:52 sthen Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
REVISION=	5

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
