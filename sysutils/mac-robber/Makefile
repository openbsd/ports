# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:46 sthen Exp $

COMMENT=		forensic tool that collects MAC times from files

VERSION=		1.02
DISTNAME=		mac-robber-${VERSION}
CATEGORIES=		sysutils security

HOMEPAGE=		http://www.sleuthkit.org/mac-robber/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mac-robber/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="${CFLAGS}" 

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mac-robber ${PREFIX}/bin 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mac-robber
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/mac-robber

.include <bsd.port.mk>
