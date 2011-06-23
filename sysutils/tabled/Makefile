# $OpenBSD: Makefile,v 1.19 2011/06/23 22:50:29 naddy Exp $

COMMENT=	daemon to modify pf tables from userland

DISTNAME=	tabled-1.0.5
REVISION =	4

CATEGORIES=    	sysutils

HOMEPAGE=	http://www.etc.msys.ch/software/tabled/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA} ${WRKSRC}/tabled.conf ${PREFIX}/share/examples/

.include <bsd.port.mk>
