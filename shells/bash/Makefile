# $OpenBSD: Makefile,v 1.22 2002/03/21 21:25:52 espie Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-1.14.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	shells
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

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

post-install:
	${INSTALL_MAN} ${WRKSRC}/documentation/builtins.1 \
		${PREFIX}/man/man1/bash_builtins.1
	@strip ${PREFIX}/bin/bash

.include <bsd.port.mk>
