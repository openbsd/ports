# $OpenBSD: Makefile,v 1.16 2001/01/03 19:36:09 brad Exp $

DISTNAME=	bash-1.14.7
CATEGORIES=	shells
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

HOMEPAGE=	http://www.gnu.org/software/bash/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L} == "static"
MAKE_ENV=	CPP_DEFINES="-DSYSDEP_LDFLAGS=-static"
.endif

.include <bsd.port.mk>
