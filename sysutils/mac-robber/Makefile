# $OpenBSD: Makefile,v 1.1.1.1 2002/11/17 00:48:00 brad Exp $

COMMENT=		"forensic tool that collects MAC times from files"

VERSION=		1.00
DISTNAME=		mac-robber-${VERSION}
CATEGORIES=		sysutils security

HOMEPAGE=		http://www.atstake.com/research/tools/

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=		CC="${CC}" GCC_CFLAGS="${CFLAGS}" 

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mac-robber ${PREFIX}/bin 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mac-robber
	cd ${WRKSRC} && ${INSTALL_MAN} README \
	 ${PREFIX}/share/doc/mac-robber

.include <bsd.port.mk>
