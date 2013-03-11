# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:47 espie Exp $

COMMENT=	RTF document converter

VERSION=	0.19.3
DISTNAME=	unrtf-${VERSION}
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://www.gnu.org/software/unrtf/unrtf.html

MASTER_SITES=	${MASTER_SITE_GNU:=unrtf/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c 

MAKE_FLAGS=	CFLAGS='${CFLAGS}' CC='${CC}'
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unrtf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrtf
	${INSTALL_DATA} ${WRKSRC}/doc/unrtf.html ${PREFIX}/share/doc/unrtf/unrtf.html
	${INSTALL_MAN} ${WRKSRC}/unrtf.1 ${PREFIX}/man/man1

TEST_TARGET=	tests
TEST_FLAGS=	PATH=${WRKSRC}

.include <bsd.port.mk>
