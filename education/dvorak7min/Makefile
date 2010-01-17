# $OpenBSD: Makefile,v 1.6 2010/01/17 16:42:22 jasper Exp $

COMMENT=	typing tutor for dvorak keyboards

DISTNAME=	dvorak7min-1.6.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	education

MAINTAINER=    Pieter-Augustijn Van Malleghem <geekassault@planetinternet.be>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c ncurses

MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

MAKE_FLAGS=	CC="${CC}" PROF="${CFLAGS}"

NO_REGRESS=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} clean

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvorak7min ${PREFIX}/bin

.include <bsd.port.mk>
