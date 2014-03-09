# $OpenBSD: Makefile,v 1.5 2014/03/09 20:26:48 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
BROKEN-powerpc =	threading issues

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20140306

CATEGORIES =		plan9

HOMEPAGE =		http://swtch.com/plan9port/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext c kvm m pthread util

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} pgw.tar.bz2 \
				roget.tar.bz2:0 scat.tgz:1
DIST_SUBDIR =		plan9port
MASTER_SITES =		https://plan9port.googlecode.com/files/
MASTER_SITES0 =		http://pdos.lcs.mit.edu/~rsc/software/plan9/
MASTER_SITES1 =		http://pdos.lcs.mit.edu/~rsc/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		archivers/bzip2
RUN_DEPENDS =		print/ghostscript/gnu \
			print/gv

WRKDIST =		${WRKDIR}/plan9port

PLAN9 =			${PREFIX}/plan9

NO_TEST =		Yes

post-extract:
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/pgw.tar.bz2
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/roget.tar.bz2
	cd ${WRKSRC}/sky && tar xzf ${FULLDISTDIR}/scat.tgz

post-patch:
	cd ${WRKSRC}/src/libthread && cp Darwin-x86_64-swapcontext.c \
		OpenBSD-x86_64.c && cp Darwin-x86_64-asm.s \
		OpenBSD-x86_64-asm.S
	find ${WRKSRC} -name .cvsignore -exec rm -f {} \;
	cd ${WRKSRC} && rm -rf .hg .hgignore .hgtags

do-build:
	cd ${WRKSRC} && env CC9="${CC}" CCFLAGS="${CFLAGS}" ./INSTALL -b

do-install:
	find ${WRKSRC}/src -name '*.orig' -exec rm -f {} \+
	cd ${WRKSRC} && perl -pi -e 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`

	${INSTALL_DATA_DIR} ${PLAN9}
	cd ${WRKSRC} && pax -rw . ${PLAN9}
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9

.include <bsd.port.mk>
