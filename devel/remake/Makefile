# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:57 sthen Exp $

COMMENT=		GNU make debugger

PKGNAME=		remake-0.61p0
DISTNAME=		remake-3.80+dbg-0.61
REVISION=		2

CATEGORIES=		devel

HOMEPAGE=		http://bashdb.sourceforge.net/remake/mdb.html
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bashdb/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/make ${PREFIX}/bin/remake
	${INSTALL_MAN} ${WRKSRC}/make.1 ${PREFIX}/man/man1/remake.1

pre-test:
	rm -f ${WRKSRC}/tests/scripts/debugger/trace.orig

.include <bsd.port.mk>
