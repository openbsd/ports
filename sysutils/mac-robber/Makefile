# $OpenBSD: Makefile,v 1.6 2007/09/15 21:14:02 merdely Exp $

COMMENT=		forensic tool that collects MAC times from files

VERSION=		1.00
DISTNAME=		mac-robber-${VERSION}
CATEGORIES=		sysutils security

HOMEPAGE=		http://www.sleuthkit.org/mac-robber/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mac-robber/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="${CFLAGS}" 

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mac-robber ${PREFIX}/bin 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mac-robber
	cd ${WRKSRC} && ${INSTALL_MAN} README \
	 ${PREFIX}/share/doc/mac-robber

.include <bsd.port.mk>
