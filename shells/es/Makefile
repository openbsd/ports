# $OpenBSD: Makefile,v 1.14 2002/10/28 19:00:09 naddy Exp $

COMMENT=	"extensible shell, derived from plan9's rc"

DISTNAME=	es-0.9-beta1
PKGNAME=	es-0.9b1
CATEGORIES=	shells

MASTER_SITES=	ftp://ftp.sys.toronto.edu/pub/es/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
.endif

ALL_TARGET=	es

post-extract:
	@cp ${FILESDIR}/{config.guess,config.sub} ${WRKSRC}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/es ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/es.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
