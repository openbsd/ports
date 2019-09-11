# $OpenBSD: Makefile,v 1.31 2019/09/11 13:42:35 kn Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
BROKEN-powerpc =	threading issues

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20190619
REVISION =		0

GH_ACCOUNT =		9fans
GH_PROJECT =		plan9port
GH_COMMIT =		e995a0c101863688d5f14649ae3de45a7c43789c

CATEGORIES =		plan9

HOMEPAGE =		https://9fans.github.io/plan9port/

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext c m pthread util fontconfig freetype z

DISTFILES =		${GH_COMMIT}.tar.gz pgw.tar.bz2:1 \
				roget.tar.bz2:0 scat.tgz:1
DIST_SUBDIR =		plan9port
MASTER_SITES0 =		http://pdos.lcs.mit.edu/~rsc/software/plan9/
MASTER_SITES1 =		http://pdos.lcs.mit.edu/~rsc/

BUILD_DEPENDS =		archivers/bzip2
RUN_DEPENDS =		print/ghostscript/gnu \
			print/gv

WRKDIST =		${WRKDIR}/plan9port-${GH_COMMIT}

PLAN9 =			${PREFIX}/plan9

NO_TEST =		Yes

SUBST_VARS +=		CC
UPDATE_PLIST_ARGS += -i CC

post-extract:
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/pgw.tar.bz2
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/roget.tar.bz2
	cd ${WRKSRC}/sky && tar xzf ${FULLDISTDIR}/scat.tgz

post-patch:
	cd ${WRKSRC}/src/libthread && cp Darwin-x86_64-swapcontext.c \
		OpenBSD-x86_64.c && cp Darwin-x86_64-asm.s \
		OpenBSD-x86_64-asm.S && mv OpenBSD-386-asm.s \
		OpenBSD-386-asm.S

pre-configure:
	${SUBST_CMD} ${WRKSRC}/INSTALL ${WRKSRC}/bin/{9c,9l}

do-build:
	cd ${WRKSRC} && env CC9="${CC}" CCFLAGS="${CFLAGS}" ./INSTALL -b

do-install:
.for l in .cvsignore .hg .hgignore .hgtags .gitignore .gitkeep *.orig *.beforesubst .travis.yml
	find ${WRKSRC} -name "$l" -exec rm -f {} \;
.endfor
	cd ${WRKSRC} && sed -i 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`
	${INSTALL_DATA_DIR} ${PLAN9}
	cd ${WRKSRC} && pax -rw . ${PLAN9}
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9

.include <bsd.port.mk>
