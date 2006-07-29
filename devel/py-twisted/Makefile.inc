# $OpenBSD: Makefile.inc,v 1.1.1.1 2006/07/29 14:37:37 alek Exp $

CATEGORIES+=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# MIT/X
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

.if empty(PKGNAME:L:M*core*)
RUN_DEPENDS+=	:py-twisted-core-*:devel/py-twisted/core
.endif
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS+=${RUN_DEPENDS}
