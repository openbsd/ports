# $OpenBSD: Makefile,v 1.9 2012/10/15 15:18:32 sthen Exp $

COMMENT=	typing tutor for dvorak keyboards

DISTNAME=	dvorak7min-1.6.1
REVISION=	0
CATEGORIES=	education

MAINTAINER=    Pieter-Augustijn Van Malleghem <geekassault@planetinternet.be>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=	http://distfiles.nl/

MAKE_FLAGS=	CC="${CC}" PROF="${CFLAGS}"

NO_REGRESS=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} clean

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvorak7min ${PREFIX}/bin

.include <bsd.port.mk>
