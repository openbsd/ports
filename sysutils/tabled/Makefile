# $OpenBSD: Makefile,v 1.20 2012/02/21 22:29:43 sthen Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
REVISION=	4

CATEGORIES=	sysutils

HOMEPAGE=	http://www.etc.msys.ch/software/tabled/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
