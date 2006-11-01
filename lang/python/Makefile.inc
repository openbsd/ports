# $OpenBSD: Makefile.inc,v 1.41 2006/11/01 21:11:55 alek Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

SHARED_ONLY=	Yes

COMMENT=	"interpreted object-oriented programming language"
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

PKGNAME=	python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
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

MULTI_PACKAGES=	-tests -tools
SUBPACKAGE?=

# All subpackages depend on the main python package.

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
RUN_DEPENDS=	:python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}:lang/python/${VERSION}
LIB_DEPENDS=
.  else
WANTLIB=	ssl panel m crypto c util z readline pthread ncurses
.  endif 
.endif

SETUP_PY=	"s,!!LOCALBASE!!,${LOCALBASE},g" \
		"s,!!X11BASE!!,${X11BASE},g"

.if empty(FLAVOR:L:Mno_bsddb)
SETUP_PY+=	"s,!!USE_BSDDB!!,1,g"
MULTI_PACKAGES+=-bsddb
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-bsddb"
LIB_DEPENDS+=	lib/db4/db.=4:db-4.*:databases/db/v4
.  endif
.else
SETUP_PY+=	"s,!!USE_BSDDB!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_gdbm)
SETUP_PY+=	"s,!!USE_GDBM!!,1,g"
MULTI_PACKAGES+=-gdbm
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-gdbm"
LIB_DEPENDS+=	gdbm.>=3::databases/gdbm
.  endif
.else
SETUP_PY+=	"s,!!USE_GDBM!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_bz2)
SETUP_PY+=	"s,!!USE_BZ2!!,1,g"
MULTI_PACKAGES+=-bz2
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-bz2"
LIB_DEPENDS+=	bz2::archivers/bzip2
.  endif
.else
SETUP_PY+=	"s,!!USE_BZ2!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_idle) && empty(FLAVOR:L:Mno_tkinter)
MULTI_PACKAGES+=-idle
.endif

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-idle"
RUN_DEPENDS+=	::lang/python/${VERSION},-tkinter
LIB_DEPENDS=
.  endif
.  if ${SUBPACKAGE} == "-tools" || ${SUBPACKAGE} == "-test"
LIB_DEPENDS=
.  endif
.endif

.if empty(FLAVOR:L:Mno_tkinter)
SETUP_PY+=	"s,!!USE_TKINTER!!,1,g"
MULTI_PACKAGES+=-tkinter
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-tkinter"
LIB_DEPENDS+=	tk84:tk-8.4.*:x11/tk/8.4
WANTLIB=	tcl84 X11
.  endif
.else
SETUP_PY+=	"s,!!USE_TKINTER!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_mpz) && ${VERSION} == "2.3"
SETUP_PY+=	"s,!!USE_MPZ!!,1,g"
MULTI_PACKAGES+=-mpz
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-mpz"
LIB_DEPENDS+=	gmp::devel/gmp
.  endif
.else
SETUP_PY+=	"s,!!USE_MPZ!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_expat)
SETUP_PY+=	"s,!!USE_EXPAT!!,1,g"
MULTI_PACKAGES+=-expat
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-expat"
LIB_DEPENDS+=	expat.>=4.0:expat->=1.95.6:textproc/expat
.  endif
.else
SETUP_PY+=	"s,!!USE_EXPAT!!,0,g"
.endif

.if empty(FLAVOR:L:Mno_sqlite) && ${VERSION} == "2.5"
SETUP_PY+=	"s,!!USE_SQLITE!!,1,g"
MULTI_PACKAGES+=-sqlite
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-sqlite"
LIB_DEPENDS+=	sqlite3.>=8.7::databases/sqlite3
.  endif
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
