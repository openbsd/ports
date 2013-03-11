# $OpenBSD: Makefile.inc,v 1.8 2013/03/11 10:50:26 espie Exp $

CATEGORIES+=	devel

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

MODPY_EGG_VERSION?=	${VERSION}

.if empty(PKGNAME:L:M*core*)
RUN_DEPENDS+=		devel/py-twisted/core
.else
TEST_DEPENDS+=	devel/py-twisted/core
.endif
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS+=${RUN_DEPENDS}

TRIAL_PYTHONPATH=	${WRKBUILD}/trial-packages
TRIAL_ENV?=	TRIAL_PYTHONPATH=${TRIAL_PYTHONPATH} PYTHONPATH=${TRIAL_PYTHONPATH}

do-test:
	ulimit -n 512 -p 512 && \
	mkdir ${TRIAL_PYTHONPATH} && \
	${TRIAL_ENV} ${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD}/trial.wrkdir \
		${TRIAL_TARGET}

clean-test:
	rm -rf ${TRIAL_PYTHONPATH}
	rm -rf ${WRKBUILD}/trial.wrkdir
	rm -f ${WRKDIR}/.test_done
