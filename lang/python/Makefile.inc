# $OpenBSD: Makefile.inc,v 1.86 2011/10/18 06:46:24 espie Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

SHARED_ONLY=	Yes

COMMENT-main=	interpreted object-oriented programming language
COMMENT-bsddb=	Berkeley db module for Python
COMMENT-gdbm=	GNU dbm module for Python
COMMENT-idle=	IDE for Python
COMMENT-tests=	Python test suite
COMMENT-tkinter=tk GUI module for Python
COMMENT-tools=	extra tools for Python

DISTNAME =	Python-${VERSION}${PATCHLEVEL}
PKGNAME-main =	python-${VERSION}${PATCHLEVEL}
PKGSPEC-main =	python-${VERSION_SPEC}
PKGNAME-bsddb =	python-bsddb-${VERSION}${PATCHLEVEL}
PKGSPEC-bsddb =	python-bsddb-${VERSION_SPEC}
PKGNAME-gdbm =	python-gdbm-${VERSION}${PATCHLEVEL}
PKGSPEC-gdbm =	python-gdbm-${VERSION_SPEC}
PKGNAME-idle =	python-idle-${VERSION}${PATCHLEVEL}
PKGSPEC-idle =	python-idle-${VERSION_SPEC}
PKGNAME-tests =	python-tests-${VERSION}${PATCHLEVEL}
PKGSPEC-tests =	python-tests-${VERSION_SPEC}
PKGNAME-tkinter = python-tkinter-${VERSION}${PATCHLEVEL}
PKGSPEC-tkinter = python-tkinter-${VERSION_SPEC}
PKGNAME-tools =	python-tools-${VERSION}${PATCHLEVEL}
PKGSPEC-tools =	python-tools-${VERSION_SPEC}

CATEGORIES=	lang
MASTER_SITES=	http://www.python.org/ftp/${PSUBDIR}/ \
		http://sunsite.informatik.rwth-aachen.de/python/ftp/${PSUBDIR}/
PSUBDIR?=	python/${VERSION}${PATCHLEVEL}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${VERSION} < 3.2
LIB_SUFX =	
MULTI_PACKAGES=	-main -tests -tools -gdbm -idle -tkinter -bsddb
.else
LIB_SUFX =	m
MULTI_PACKAGES=	-main -tests -gdbm -idle -tkinter
.endif

# Python 2.7 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
.if ${VERSION} == "2.7"
ONLY_FOR_ARCHS-bsddb=	amd64 i386
.endif

# All subpackages depend on the main python package.

RUN_DEPENDS=		${FULLPKGNAME-main}:lang/python/${VERSION},-main
LIB_DEPENDS=

LIB_DEPENDS-main =	archivers/bzip2
RUN_DEPENDS-main =
WANTLIB-main =		ssl panelw m crypto c util z readline pthread \
			ncursesw stdc++ expat ossaudio bz2
.if ${VERSION} != "2.4"
LIB_DEPENDS-main +=	databases/sqlite3
WANTLIB-main +=		sqlite3
.endif

LIB_DEPENDS-bsddb =	lang/python/${VERSION},-main
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# XXX recursion: if we have java, then db/v4 depends on libxml
LIB_DEPENDS-bsddb +=	databases/db/v4,no_tcl,no_java,bootstrap
.else
LIB_DEPENDS-bsddb +=	databases/db/v4
.endif

WANTLIB-bsddb =		lib/db4/db>=4 python${VERSION}${LIB_SUFX}
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/python/${VERSION},-main
WANTLIB-gdbm =		gdbm>=3 python${VERSION}${LIB_SUFX}
RUN_DEPENDS-idle =	${RUN_DEPENDS} \
			lang/python/${VERSION},-tkinter
# XXX Tcl/Tk version number handled in patch-setup_py
MODULES +=		x11/tk
LIB_DEPENDS-tkinter =	${MODTK_LIB_DEPENDS} \
			lang/python/${VERSION},-main
WANTLIB-tkinter =	X11 ${MODTK_WANTLIB} python${VERSION}${LIB_SUFX}

.if ${VERSION} < 3.2
.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST =		patch-* sup64-*
PKG_ARGS+=	-Dmm=0
.else
PKG_ARGS+=	-Dmm=1
.endif
.endif

# The ctypes module depends of devel/libffi, not supported on all platforms
.if ${VERSION} == "2.4" || ${MACHINE_ARCH:Marm}
PKG_ARGS+=	-Dctypes=0
.else
PKG_ARGS+=	-Dctypes=1
LIB_DEPENDS-main += devel/libffi
CONFIGURE_ARGS +=	--with-system-ffi
WANTLIB-main +=	ffi
.endif

USE_GROFF =	Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS+=	--with-fpectl --with-threads --srcdir=${WRKSRC}
CONFIGURE_ARGS+=	--enable-ipv6

# THREAD_STACK_SIZE value might be changed by particular python release
THREAD_STACK_SIZE?=0x20000

CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=${THREAD_STACK_SIZE} -fPIC' \
		LDFLAGS='-L${LOCALBASE}/lib/' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV+=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
.if ${VERSION} < 3.2
MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION}
.endif
MAKE_FLAGS+=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
MAKE_FLAGS+=	LDFLAGS='-L${WRKSRC}'
FAKE_FLAGS+=	RANLIB=:

ALL_TARGET?=	everything ./Lib/plat-openbsd5

post-extract:
	rm -r ${WRKDIST}/Modules/expat

post-configure:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile

ADJ_FILES = ${WRKSRC}/Tools/scripts/pydoc*
.if ${VERSION} == "2.7"
ADJ_FILES += ${WRKSRC}/Tools/scripts/2to3
.endif

post-build:
	perl -pi -e \
		's@#! */usr/bin/env +python@#!${PREFIX}/bin/python${VERSION}@' \
		${ADJ_FILES}

post-install:
.if ${VERSION} < 3.2
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc \
		${PREFIX}/bin/pydoc${VERSION}
	@sed -e "s,@VERSION@,${VERSION},g" -e "s,@LOCALBASE@,${LOCALBASE},g" \
		${FILESDIR}/idle > ${WRKSRC}/idle
	${INSTALL_SCRIPT} ${WRKSRC}/idle ${PREFIX}/bin/idle${VERSION}
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
		tar -xf -)
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD
.if ${VERSION} == "2.7"
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/2to3 \
		${PREFIX}/bin/python${VERSION}-2to3
.endif

REGRESS_TARGET=	test
REGRESS_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}
