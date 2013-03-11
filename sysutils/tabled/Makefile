# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:33 espie Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
REVISION=	4

CATEGORIES=	sysutils

HOMEPAGE=	http://www.etc.msys.ch/software/tabled/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
