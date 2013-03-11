# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:29 espie Exp $

COMMENT=	extensible shell, derived from plan9's rc

DISTNAME=	es-0.9-beta1
PKGNAME=	es-0.9beta1
EPOCH=		0
CATEGORIES=	shells

MASTER_SITES=	ftp://ftp.sys.toronto.edu/pub/es/

PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu dest

WANTLIB=	c 

ALL_TARGET=	es

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/es ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/es.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
