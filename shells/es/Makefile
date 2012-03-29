# $OpenBSD: Makefile,v 1.20 2012/03/29 13:39:00 sthen Exp $

COMMENT=	extensible shell, derived from plan9's rc

DISTNAME=	es-0.9-beta1
PKGNAME=	es-0.9beta1
EPOCH=		0
CATEGORIES=	shells

MASTER_SITES=	ftp://ftp.sys.toronto.edu/pub/es/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu dest

WANTLIB=	c 

ALL_TARGET=	es

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/es ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/es.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
