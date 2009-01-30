# $OpenBSD: Makefile.inc,v 1.4 2009/01/30 16:22:08 eric Exp $

CATEGORIES+=	devel

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT/X
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

MODPY_EGG_VERSION?=	${VERSION}

.if empty(PKGNAME:L:M*core*)
RUN_DEPENDS+=		:py-twisted-core-*:devel/py-twisted/core
.else
REGRESS_DEPENDS+=	:py-twisted-core-*:devel/py-twisted/core
.endif
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS+=${RUN_DEPENDS}

do-regress:
	${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD} ${TRIAL_TARGET}
