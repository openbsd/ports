# $OpenBSD: Makefile,v 1.10 2000/07/04 23:47:01 brad Exp $

DISTNAME=	es-0.9-beta1
PKGNAME=	es-0.9b1
CATEGORIES=	shells
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.sys.toronto.edu/pub/es/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest

FLAVORS=static
FLAVOR?=

.if defined(STATIC) && ${STATIC:U} == YES
FLAVOR=static
.endif
.if ${FLAVOR:L} == "static"
CONFIGURE_ENV+=	LDFLAGS=-static
.endif

ALL_TARGET=	es

post-extract:
	@cp ${FILESDIR}/{config.guess,config.sub} ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/es ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/es.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
