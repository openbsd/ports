# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:38 sthen Exp $

COMMENT=	extensible shell, derived from plan9's rc

DISTNAME=	es-0.9-beta1
PKGNAME=	es-0.9beta1
REVISION=	0
EPOCH=		0
CATEGORIES=	shells

MASTER_SITES=	ftp://ftp.sys.toronto.edu/pub/es/

PERMIT_PACKAGE=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu dest

WANTLIB=	c 

ALL_TARGET=	es

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/es ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/es.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
