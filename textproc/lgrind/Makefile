# $OpenBSD: Makefile,v 1.8 2002/06/09 05:37:15 wilfried Exp $

COMMENT=	"LaTeX vgrind(1) look-alike"

CATEGORIES=	textproc devel print
NEED_VERSION=	1.515
VERSION=3.67
DISTNAME=	lgrind-${VERSION}
DISTFILES=source/lgrind.c source/lgutil.c source/lgrindef.c source/lgrindef.h \
	source/regexp.c source/regexp.h source/v2lg.c \
	source/retest.c source/lgrind.1 source/lgrindef.5 source/Makefile \
	lgrindef lgrind.dtx lgrind.ins lgrind.gls

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Gripe to Van Jacobson for pissing off lgrind's current caretaker
# into not maintaining it anymore.
PERMIT_PACKAGE_CDROM=May not be sold
PERMIT_DISTFILES_CDROM=May not be sold
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes

WRKDIST=${WRKDIR}

EXTRACT_CASES= *) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MASTER_SITES=${MASTER_SITE_TEX_CTAN:=support/lgrind/}
DIST_SUBDIR=${DISTNAME}

MAKE_FLAGS=BASEDIR=${PREFIX} DEFSFILE=${PREFIX}/share/texmf/tex/latex/lgrind/lgrindef VERSION=${VERSION} CFLAGS='${CFLAGS}'
FAKE_FLAGS=BASEDIR=${WRKINST}${PREFIX}

BUILD_DEPENDS=:teTeX_base-*:print/teTeX/base
RUN_DEPENDS=${BUILD_DEPENDS}

post-build:
	cd ${WRKDIST} && latex lgrind.ins
	cd ${WRKDIST} && latex lgrind.dtx
	cd ${WRKDIST} && latex lgrind.dtx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/tex/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrindef ${PREFIX}/share/texmf/tex/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrind.sty ${PREFIX}/share/texmf/tex/latex/lgrind
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/doc/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrind.dvi ${PREFIX}/share/texmf/doc/latex/lgrind

.include <bsd.port.mk>
