# $OpenBSD: Makefile,v 1.13 2000/03/26 00:12:27 espie Exp $

DISTNAME=	bash-1.14.7
CATEGORIES=	shells
NEED_VERSION=	1.234
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# invoke make with STATIC=yes to build a static binary
.if defined(STATIC) && ${STATIC:U} == YES
MAKE_ENV=	CPP_DEFINES="-DSYSDEP_LDFLAGS=-static"
PKGNAME=        ${DISTNAME}-static
.endif

FAKE=		Yes

.include <bsd.port.mk>
