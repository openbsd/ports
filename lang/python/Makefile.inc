# $OpenBSD: Makefile.inc,v 1.46 2007/04/28 10:06:24 bernd Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

SHARED_ONLY=	Yes

COMMENT-main=	"interpreted object-oriented programming language"
COMMENT-expat=	"expat module for Python"
COMMENT-bsddb=	"Berkeley db module for Python"
COMMENT-gdbm=	"GNU dbm module for Python"
COMMENT-idle=	"IDE for Python"
COMMENT-mpz=	"GNU arbitrary magnitude integer module for Python"
COMMENT-tests=	"Python test suite"
COMMENT-tkinter="tk GUI module for Python"
COMMENT-tools=	"extra tools for Python"
COMMENT-sqlite=	"sqlite database module for Python"
COMMENT-bz2=	"bz2 module for Python"

PKGNAME-main=	python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
DISTNAME=	Python-${VERSION}${PATCHLEVEL}
CATEGORIES=	lang
MASTER_SITES=	http://www.python.org/ftp/${PSUBDIR}/ \
		http://python.mirrors.pair.com/pub/${PSUBDIR}/
PSUBDIR=	python/${VERSION}${PATCHLEVEL}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PSEUDO_FLAVORS=	no_expat no_gdbm no_idle no_mpz no_tkinter no_bsddb no_bz2 \
		no_sqlite
FLAVOR?=

MULTI_PACKAGES=	-main -tests -tools

# All subpackages depend on the main python package.

RUN_DEPENDS=	:python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}:lang/python/${VERSION},-main
LIB_DEPENDS=

RUN_DEPENDS-main=
WANTLIB-main=	ssl panel m crypto c util z readline pthread ncurses stdc++

LIB_DEPENDS-bsddb=	lib/db4/db.=4:db-4.*:databases/db/v4
LIB_DEPENDS-gdbm=	gdbm.>=3::databases/gdbm
LIB_DEPENDS-bz2=	bz2::archivers/bzip2
RUN_DEPENDS-idle=	${RUN_DEPENDS} \
			::lang/python/${VERSION},-tkinter
LIB_DEPENDS-tkinter=	tk84:tk-8.4.*:x11/tk/8.4
WANTLIB-tkinter=	tcl84 X11
LIB_DEPENDS-mpz=	gmp::devel/gmp
WANTLIB-expat=		expat
LIB_DEPENDS-sqlite=	sqlite3.>=8.7::databases/sqlite3

SETUP_PY=	"s,!!LOCALBASE!!,${LOCALBASE},g" \
		"s,!!X11BASE!!,${X11BASE},g"

.if empty(FLAVOR:L:Mno_bsddb)
SETUP_PY+=	"s,!!USE_BSDDB!!,1,g"
MULTI_PACKAGES+=-bsddb
.else
SETUP_PY+=	"s,!!USE_BSDDB!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_gdbm)
SETUP_PY+=	"s,!!USE_GDBM!!,1,g"
MULTI_PACKAGES+=-gdbm
.else
SETUP_PY+=	"s,!!USE_GDBM!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_bz2)
SETUP_PY+=	"s,!!USE_BZ2!!,1,g"
MULTI_PACKAGES+=-bz2
.else
SETUP_PY+=	"s,!!USE_BZ2!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_idle) && empty(FLAVOR:L:Mno_tkinter)
MULTI_PACKAGES+=-idle
.endif

.if empty(FLAVOR:L:Mno_tkinter)
USE_X11=	Yes
SETUP_PY+=	"s,!!USE_TKINTER!!,1,g"
MULTI_PACKAGES+=-tkinter
.else
SETUP_PY+=	"s,!!USE_TKINTER!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_mpz) && ${VERSION} == "2.3"
SETUP_PY+=	"s,!!USE_MPZ!!,1,g"
MULTI_PACKAGES+=-mpz
.else
SETUP_PY+=	"s,!!USE_MPZ!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_expat)
SETUP_PY+=	"s,!!USE_EXPAT!!,1,g"
MULTI_PACKAGES+=-expat
.else
SETUP_PY+=	"s,!!USE_EXPAT!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_sqlite) && ${VERSION} == "2.5"
SETUP_PY+=	"s,!!USE_SQLITE!!,1,g"
MULTI_PACKAGES+=-sqlite
.else
SETUP_PY+=	"s,!!USE_SQLITE!!,0,g"
.endif

FULLPKGNAME-expat=	python-expat-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-gdbm=	python-gdbm-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-idle=	python-idle-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-mpz=	python-mpz-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tests=	python-tests-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tkinter=	python-tkinter-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tools=	python-tools-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-sqlite=	python-sqlite-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-bz2=	python-bz2-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS+=--with-fpectl --with-threads --srcdir=${WRKSRC}
CONFIGURE_ARGS+=--enable-ipv6

# THREAD_STACK_SIZE value might be changed by particular python release
THREAD_STACK_SIZE?=0x20000

REGRESS_TARGET=	test

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PKG_ARGS+=	-Dmm=0
.else
PKG_ARGS+=	-Dmm=1
.endif

# The ctypes module is not supported on all platforms (in particular, ARM)
.if ${VERSION} == "2.5"
.  if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
      ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64" || \
      ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k" || \
      ${MACHINE_ARCH} == "powerpc"
PKG_ARGS+=	-Dctypes=1
.  else
PKG_ARGS+=	-Dctypes=0
.  endif
.endif

CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=${THREAD_STACK_SIZE} -fPIC' \
		LDFLAGS='-L${WRKSRC}'
MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION} \
		LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
FAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION} \
		LD_LIBRARY_PATH=${WRKSRC} RANLIB=:

ALL_TARGET=	all ${WRKSRC}/Lib/plat-openbsd4

post-configure:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile
	for i in ${SETUP_PY}; do \
		perl -pi -e "$$i" ${WRKSRC}/setup.py; \
	done

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
