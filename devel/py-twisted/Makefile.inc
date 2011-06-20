# $OpenBSD: Makefile.inc,v 1.7 2011/06/20 10:25:32 eric Exp $

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

TRIAL_PYTHONPATH=	${WRKBUILD}/trial-packages
TRIAL_ENV?=	TRIAL_PYTHONPATH=${TRIAL_PYTHONPATH} PYTHONPATH=${TRIAL_PYTHONPATH}

do-regress:
	ulimit -n 512 -p 512 && \
	mkdir ${TRIAL_PYTHONPATH} && \
	${TRIAL_ENV} ${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD}/trial.wrkdir \
		${TRIAL_TARGET}

clean-regress:
	rm -rf ${TRIAL_PYTHONPATH}
	rm -rf ${WRKBUILD}/trial.wrkdir
	rm -f ${WRKDIR}/.regress_done
