# $OpenBSD: Makefile,v 1.24 2002/10/28 18:56:43 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-1.14.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	shells

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}

HOMEPAGE=	http://www.gnu.org/software/bash/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L} == "static"
MAKE_ENV=	CPP_DEFINES="-DSYSDEP_LDFLAGS=-static"
.endif

REGRESS_TARGET=	tests

post-install:
	${INSTALL_MAN} ${WRKSRC}/documentation/builtins.1 \
		${PREFIX}/man/man1/bash_builtins.1
	@strip ${PREFIX}/bin/bash

.include <bsd.port.mk>
