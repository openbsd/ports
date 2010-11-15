# $OpenBSD: Makefile.inc,v 1.6 2010/11/15 19:46:08 espie Exp $

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
RUN_DEPENDS+=		devel/py-twisted/core
.else
REGRESS_DEPENDS+=	devel/py-twisted/core
.endif
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS+=${RUN_DEPENDS}

do-regress:
	ulimit -n 512 -p 512 && \
	${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/trial.wrkdir \
		${TRIAL_TARGET}
