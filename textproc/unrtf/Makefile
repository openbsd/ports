# $OpenBSD: Makefile,v 1.8 2007/09/15 20:59:42 merdely Exp $

COMMENT=	RTF document converter

VERSION=	0.19.3
DISTNAME=	unrtf-${VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://www.gnu.org/software/unrtf/unrtf.html

MASTER_SITES=	${MASTER_SITE_GNU:=unrtf/}

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

MAKE_FLAGS=	CFLAGS='${CFLAGS}' CC='${CC}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unrtf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrtf
	${INSTALL_DATA} ${WRKSRC}/doc/unrtf.html ${PREFIX}/share/doc/unrtf/unrtf.html
	${INSTALL_MAN} ${WRKSRC}/unrtf.1 ${PREFIX}/man/man1

REGRESS_TARGET=	tests
REGRESS_FLAGS=	PATH=${WRKSRC}

.include <bsd.port.mk>
