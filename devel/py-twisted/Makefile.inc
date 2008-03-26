# $OpenBSD: Makefile.inc,v 1.2 2008/03/26 19:57:23 eric Exp $

CATEGORIES+=	devel

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT/X
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

SUBST_VARS+=	VERSION

.if empty(PKGNAME:L:M*core*)
RUN_DEPENDS+=	:py-twisted-core-*:devel/py-twisted/core
.endif
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS+=${RUN_DEPENDS}
