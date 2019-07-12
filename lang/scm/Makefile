# $OpenBSD: Makefile,v 1.42 2019/07/12 20:47:23 sthen Exp $
# losely based on the FreeBSD port

.for m in alpha powerpc sparc64
BROKEN-$m =	segfaults in longjump return while testing continuations
.endfor

COMMENT =	scheme r5 interpreter
REVISION =	2

CATEGORIES =	lang

V = 5f1
DISTNAME =	scm-$V
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://people.csail.mit.edu/jaffer/SCM

MASTER_SITES =	http://groups.csail.mit.edu/mac/ftpdir/scm/ \
		http://groups.csail.mit.edu/mac/ftpdir/scm/OLD/

MAINTAINER =	Marc Espie <espie@openbsd.org>

WRKDIST =	${WRKDIR}/scm

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m readline

FLAVORS =	no_x11

FLAVOR ?=

SUBST_VARS =	V

SCM_DATA =	COPYING Idiffer.scm Iedline.scm Init${V}.scm Link.scm \
		Macexp.scm Macro.scm Transcen.scm Tscript.scm \
		build build.scm compile.scm hobbit.scm mkimpcat.scm \
		r4rstest.scm scmhob.scm \
		disarm.scm split.scm

SCM_INFO =	scm.info hobbit.info
SCM_INCLUDES =	scmflags.h scmfig.h patchlvl.h scmhob.h
.if !${FLAVOR:Mno_x11}
SCM_DATA +=	keysymdef.scm x11.scm xatoms.scm xevent.scm
SCM_INFO +=	Xlibscm.info
.endif

FEATURES =	arrays bignums cautious edit-line curses posix socket unix \
		dynamic-linking i/o-extensions inexact regex

.if !${FLAVOR:Mno_x11}
FEATURES +=	x
OPTIONS +=	--compiler-options=-I${X11BASE}/include --compiler-options=-O2
OPTIONS +=	--linker-options=-L${X11BASE}/lib
SCM_DATA +=	x11.scm xevent.scm
WANTLIB +=	X11
.endif

BUILD_DEPENDS =	devel/slib
RUN_DEPENDS =	devel/slib

FEATURE_LIST =
.for f in ${FEATURES}
FEATURE_LIST +=	-F $f
.endfor

pre-build:
	@echo "srcdir=${WRKSRC}" >${WRKSRC}/srcdir.mk

post-build:
	cd ${WRKSRC} && ${MAKE_ENV} PATH=${WRKSRC}:${PORTPATH} /bin/sh ./build \
	    ${FEATURE_LIST} \
	    ${OPTIONS} \
	    -h system \
	    -o scm \
	    -s "${PREFIX}/share/scm/"
	cd ${WRKSRC} && ${MAKE_ENV} PATH=${WRKSRC}:${PORTPATH} /bin/sh ./build \
	    ${FEATURE_LIST} -F sicp \
	    ${OPTIONS} \
	    -h system \
	    -o scm-sicp \
	    -s "${PREFIX}/share/scm/"

ALL_TARGET =	scmlit

#CFLAGS+=	-Dunix
MAKE_FLAGS =	CFLAGS='${CFLAGS}' LD='${CC}'
MAKE_ENV =	SCHEME_LIBRARY_PATH=${LOCALBASE}/share/slib/
CONFIGURE_STYLE =	simple

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/scm	${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/scmlit	${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/scm-sicp	${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/scm.1	${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/scm
	${INSTALL_DATA_DIR} ${PREFIX}/include/scm
	sed -e 's,@PREFIX@,${TRUEPREFIX},' \
	    <${FILESDIR}/require.scm.in \
	    >${PREFIX}/share/scm/require.scm
.for file in ${SCM_INCLUDES}
	${INSTALL_DATA} ${WRKBUILD}/${file} ${PREFIX}/include/scm
.endfor
.for file in ${SCM_DATA}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/scm
.endfor
.for file in ${SCM_INFO}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/info
.endfor

FAKE_FLAGS = 	exec_prefix=${WRKINST}${TRUEPREFIX}/
TEST_TARGET =	check

.include <bsd.port.mk>
