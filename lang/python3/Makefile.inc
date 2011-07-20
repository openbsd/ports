# $OpenBSD: Makefile.inc,v 1.3 2011/07/20 12:06:57 rpointel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

SHARED_ONLY=	Yes

COMMENT-main=	interpreted object-oriented programming language
COMMENT-gdbm=	GNU dbm module for Python
COMMENT-idle=	IDE for Python
COMMENT-tests=	Python test suite
COMMENT-tkinter=tk GUI module for Python

DISTNAME=	Python-${VERSION}${PATCHLEVEL}
PKGNAME-main=	python3-${VERSION}${PATCHLEVEL}
PKGNAME-gdbm=	python3-gdbm-${VERSION}${PATCHLEVEL}
PKGNAME-idle=	python3-idle-${VERSION}${PATCHLEVEL}
PKGNAME-tests=	python3-tests-${VERSION}${PATCHLEVEL}
PKGNAME-tkinter=python3-tkinter-${VERSION}${PATCHLEVEL}
CATEGORIES=	lang
MASTER_SITES=	http://www.python.org/ftp/${PSUBDIR}/ \
		http://python.mirrors.pair.com/pub/${PSUBDIR}/
PSUBDIR?=	python/${VERSION}${PATCHLEVEL}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Remi Pointel <rpointel@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -tests -gdbm -idle -tkinter

# Python 2.6 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
#.if ${VERSION} == "2.6" || ${VERSION} == "2.7"
#ONLY_FOR_ARCHS-bsddb=	amd64 i386
#.endif

# All subpackages depend on the main python package.

RUN_DEPENDS=		${FULLPKGNAME-main}:lang/python3/${VERSION},-main
LIB_DEPENDS=

LIB_DEPENDS-main =	archivers/bzip2
RUN_DEPENDS-main =
WANTLIB-main =		ssl panelw m crypto c util z readline pthread \
			ncursesw stdc++ expat bz2 ffi
LIB_DEPENDS-main +=	databases/sqlite3 \
			devel/libffi
WANTLIB-main +=		sqlite3

LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/python3/${VERSION},-main
WANTLIB-gdbm =		gdbm>=3 python${VERSION}m
RUN_DEPENDS-idle =	${RUN_DEPENDS} \
			lang/python3/${VERSION},-tkinter
# XXX Tcl/Tk version number handled in patch-setup_py
MODULES +=		x11/tk
LIB_DEPENDS-tkinter =	${MODTK_LIB_DEPENDS} \
			lang/python3/${VERSION},-main
WANTLIB-tkinter =	X11 ${MODTK_WANTLIB} python${VERSION}m

#.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
#PATCH_LIST =		patch-* sup64-*
#PKG_ARGS+=	-Dmm=0
#.else
#PKG_ARGS+=	-Dmm=1
#.endif

# XXX fix ctypes on powerpc for python2.6
# The ctypes module is not supported on all platforms (in particular, ARM)
#.if ${VERSION} == "2.5" || ${VERSION} == "2.6" || ${VERSION} == "2.7"
#.  if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
#      ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64" || \
#      ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k" || \
#      ${MACHINE_ARCH:Mmips64*} || \
#      ( ${MACHINE_ARCH} == "powerpc" && ( ${VERSION} != "2.6" && ${VERSION} != "2.7" ) )
#PKG_ARGS+=	-Dctypes=1
#.  else
#PKG_ARGS+=	-Dctypes=0
#.  endif
#.endif

USE_GROFF =	Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS+=	--with-fpectl --with-threads --srcdir=${WRKSRC}
CONFIGURE_ARGS+=	--enable-ipv6 --with-cxx_main 
CONFIGURE_ARGS+=	--with-system-ffi --with-system-expat

# THREAD_STACK_SIZE value might be changed by particular python release
THREAD_STACK_SIZE?=0x20000

CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=${THREAD_STACK_SIZE} -fPIC' \
		LDFLAGS='-L${LOCALBASE}/lib/' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV+=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
#MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}m.so.${LIBpython${VERSION}_VERSION}
#MAKE_FLAGS+=	LDLIBRARY=libpython3.2m.so.${LIBpython${VERSION}m_VERSION}
MAKE_FLAGS+=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
MAKE_FLAGS+=	LDFLAGS='-L${WRKSRC}'
FAKE_FLAGS+=	RANLIB=:

ALL_TARGET?=	everything ./Lib/plat-openbsd5

post-extract:
	rm -r ${WRKDIST}/Modules/expat
	rm -r ${WRKDIST}/Modules/_ctypes/libffi

post-configure:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile

post-build:
	perl -pi -e \
		's@#! */usr/bin/env +python@#!${PREFIX}/bin/python${VERSION}@' \
		${WRKSRC}/Tools/scripts/pydoc3

#post-install:
#	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc \
#		${PREFIX}/bin/pydoc${VERSION}
#	@sed -e "s,@VERSION@,${VERSION},g" -e "s,@LOCALBASE@,${LOCALBASE},g" \
#		${FILESDIR}/idle > ${WRKSRC}/idle
#	${INSTALL_SCRIPT} ${WRKSRC}/idle ${PREFIX}/bin/idle${VERSION}
#	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
#		tar -xf -)
#	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
#	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
#		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD
#	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/2to3 \
#		${PREFIX}/bin/python${VERSION}-2to3

REGRESS_TARGET=	test
REGRESS_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}
