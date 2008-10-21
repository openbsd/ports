# $OpenBSD: Makefile,v 1.18 2008/10/21 21:03:55 steven Exp $

COMMENT=	LaTeX vgrind(1) look-alike

CATEGORIES=	textproc devel print

VERSION=	3.67
DISTNAME=	lgrind-${VERSION}
PKGNAME=	${DISTNAME}p2
DISTFILES=source/lgrind.c source/lgutil.c source/lgrindef.c source/lgrindef.h \
	source/regexp.c source/regexp.h source/v2lg.c \
	source/retest.c source/lgrind.1 source/lgrindef.5 source/Makefile \
	lgrindef lgrind.dtx lgrind.ins lgrind.gls

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Gripe to Van Jacobson for pissing off lgrind's current caretaker
# into not maintaining it anymore.
PERMIT_PACKAGE_CDROM=	May not be sold
PERMIT_DISTFILES_CDROM=	May not be sold
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

WRKDIST=	${WRKDIR}

EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/lgrind/}
DIST_SUBDIR=	${DISTNAME}

MAKE_FLAGS=	BASEDIR=${PREFIX} \
		DEFSFILE=${TEXMF}/tex/latex/lgrind/lgrindef \
		VERSION=${VERSION} \
		CC='${CC}' CFLAGS='${CFLAGS}'
FAKE_FLAGS=	BASEDIR=${WRKINST}${PREFIX}

RUN_DEPENDS=	::print/texlive/texmf,-tetex
BUILD_DEPENDS=	${RUN_DEPENDS}

TEXMF=		${PREFIX}/share/texmf-local

post-build:
	cd ${WRKDIST} && latex lgrind.ins
	cd ${WRKDIST} && latex lgrind.dtx
	cd ${WRKDIST} && latex lgrind.dtx

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${TEXMF}/tex/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrindef ${TEXMF}/tex/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrind.sty ${TEXMF}/tex/latex/lgrind
	${INSTALL_DATA_DIR} ${TEXMF}/doc/latex/lgrind
	${INSTALL_DATA} ${WRKDIST}/lgrind.dvi ${TEXMF}/doc/latex/lgrind

.include <bsd.port.mk>
