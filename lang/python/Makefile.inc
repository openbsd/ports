# $OpenBSD: Makefile.inc,v 1.61 2009/09/22 21:31:00 ajacoutot Exp $

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

PKGNAME-main=	python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
DISTNAME=	Python-${VERSION}${PATCHLEVEL}
CATEGORIES=	lang
MASTER_SITES=	http://www.python.org/ftp/${PSUBDIR}/ \
		http://python.mirrors.pair.com/pub/${PSUBDIR}/
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

MULTI_PACKAGES=	-main -tests -tools -gdbm -idle -tkinter

# Python 2.6 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
.if ${VERSION} != "2.6" || \
    ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
MULTI_PACKAGES+=-bsddb
.endif

# All subpackages depend on the main python package.

RUN_DEPENDS=		:python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}:lang/python/${VERSION},-main
LIB_DEPENDS=

LIB_DEPENDS-main=	bz2::archivers/bzip2
RUN_DEPENDS-main=
WANTLIB-main=		ssl panel m crypto c util z readline pthread \
			ncurses stdc++ expat ossaudio
.if ${VERSION} == "2.5" || ${VERSION} == "2.6"
LIB_DEPENDS-main+=	sqlite3::databases/sqlite3
.endif

LIB_DEPENDS-bsddb=	lib/db4/db.>=4:db->=4,<5:databases/db/v4
LIB_DEPENDS-gdbm=	gdbm.>=3::databases/gdbm
RUN_DEPENDS-idle=	${RUN_DEPENDS} \
			::lang/python/${VERSION},-tkinter
LIB_DEPENDS-tkinter=	tcl84:tcl->=8.4,<8.5:lang/tcl/8.4 \
			tk84:tk->=8.4,<8.5:x11/tk/8.4
WANTLIB-tkinter=	X11 pthread-stubs xcb

FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-gdbm=	python-gdbm-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-idle=	python-idle-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tests=	python-tests-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tkinter=	python-tkinter-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tools=	python-tools-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PKG_ARGS+=	-Dmm=0
.else
PKG_ARGS+=	-Dmm=1
.endif

# XXX fix ctypes on powerpc for python2.6
# The ctypes module is not supported on all platforms (in particular, ARM)
.if ${VERSION} == "2.5" || ${VERSION} == "2.6"
.  if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
      ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64" || \
      ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k" || \
      ( ${MACHINE_ARCH} == "powerpc" && ${VERSION} != "2.6" )
PKG_ARGS+=	-Dctypes=1
.  else
PKG_ARGS+=	-Dctypes=0
.  endif
.endif

USE_X11=		Yes

AUTOCONF_VERSION?=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS+=	--with-fpectl --with-threads --srcdir=${WRKSRC}
CONFIGURE_ARGS+=	--enable-ipv6

# THREAD_STACK_SIZE value might be changed by particular python release
THREAD_STACK_SIZE?=0x20000

CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=${THREAD_STACK_SIZE} -fPIC' \
		LDFLAGS='-L${WRKSRC}' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV+=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION}
MAKE_FLAGS+=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
FAKE_FLAGS+=	RANLIB=:

ALL_TARGET?=	everything ./Lib/plat-openbsd4

post-configure:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc \
		${PREFIX}/bin/pydoc${VERSION}
	@sed -e "s,@VERSION@,${VERSION},g" -e "s,@LOCALBASE@,${LOCALBASE},g" \
		${FILESDIR}/idle > ${WRKSRC}/idle
	${INSTALL_SCRIPT} ${WRKSRC}/idle ${PREFIX}/bin/idle${VERSION}
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
		tar -xf -)
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD
.if ${VERSION} == "2.5" || ${VERSION} == "2.6"
		${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
		${INSTALL_DATA} ${WRKSRC}/Misc/python-mode.el \
			${PREFIX}/share/emacs/site-lisp/python-mode-${VERSION}.el
.endif

REGRESS_TARGET=	test
REGRESS_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}

