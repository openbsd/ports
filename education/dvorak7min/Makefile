# $OpenBSD: Makefile,v 1.1.1.1 2003/03/29 00:39:45 naddy Exp $

COMMENT=	"typing tutor for dvorak keyboards"

DISTNAME=	dvorak7min-1.6.1
CATEGORIES=	education
HOMEPAGE=	http://www.linalco.com/comunidad.html

MAINTAINER=	Pieter-Augustijn Van Malleghem <geekassault@planetinternet.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	http://www.linalco.com/ragnar/

MAKE_FLAGS=	CC="${CC}" PROF="${CFLAGS}"

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} clean

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvorak7min ${PREFIX}/bin

.include <bsd.port.mk>
