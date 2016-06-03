# $OpenBSD: Makefile,v 1.16 2016/06/03 01:44:51 gsoares Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
BROKEN-powerpc =	threading issues

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20160418
REVISION =		1

GH_ACCOUNT =		9fans
GH_PROJECT =		plan9port
GH_COMMIT =		35d43924484b88b9816e40d2f6bff4547f3eec47

CATEGORIES =		plan9

HOMEPAGE =		http://swtch.com/plan9port/

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE_CDROM =	Yes

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

post-extract:
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/pgw.tar.bz2
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/roget.tar.bz2
	cd ${WRKSRC}/sky && tar xzf ${FULLDISTDIR}/scat.tgz

post-patch:
	cd ${WRKSRC}/src/libthread && cp Darwin-x86_64-swapcontext.c \
		OpenBSD-x86_64.c && cp Darwin-x86_64-asm.s \
		OpenBSD-x86_64-asm.S && mv OpenBSD-386-asm.s \
		OpenBSD-386-asm.S
	find ${WRKSRC} -name .cvsignore -exec rm -f {} \;
	cd ${WRKSRC} && rm -rf .hg .hgignore .hgtags .gitignore

do-build:
	cd ${WRKSRC} && env CC9="${CC}" CCFLAGS="${CFLAGS}" ./INSTALL -b

do-install:
	find ${WRKSRC}/src -name '*.orig' -exec rm -f {} \+
	cd ${WRKSRC} && rm *.orig && sed -i 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`

	${INSTALL_DATA_DIR} ${PLAN9}
	cd ${WRKSRC} && pax -rw . ${PLAN9}
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9

.include <bsd.port.mk>
