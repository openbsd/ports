# $OpenBSD: Makefile.inc,v 1.38 2006/10/02 18:54:09 alek Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

COMMENT=	"interpreted object-oriented programming language"
COMMENT-expat=	"expat module for Python"
COMMENT-bsddb=	"Berkeley db module for Python"
COMMENT-gdbm=	"GNU dbm module for Python"
COMMENT-idle=	"IDE for Python"
COMMENT-mpz=	"GNU arbitrary magnitude integer module for Python"
COMMENT-tests=	"Python test suite"
COMMENT-tkinter="tk GUI module for Python"
COMMENT-tools=	"extra tools for Python"

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

FLAVORS=	no_expat no_gdbm no_idle no_mpz no_tkinter no_bsddb
FLAVOR?=

MULTI_PACKAGES=	-tests -tools
SUBPACKAGE?=

LIB_DEPENDS=	bz2::archivers/bzip2

# All subpackages depend on the main python package.

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
RUN_DEPENDS=	:python-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}:lang/python/${VERSION}
LIB_DEPENDS=
.  else
WANTLIB=	ssl curses termcap panel m crypto c util z readline pthread \
		ncurses stdc++
.  endif 
.endif

# On architectures with shared libs, no_xxx flavors are a convenient
# way to avoid pulling in dependencies, and don't actually show up
# in the final package names.  On architectures without shared libs,
# no_xxx flavors dictate what gets linked into the Python binary.

# this cannot be put into 2.3/Makefile due to NO_SHARED_LIBS vs MULTI_PACKAGES
.if empty(FLAVOR:L:Mno_bsddb)
BUILD_DEPENDS+=		::databases/db/v4
SETUP_LOCAL+=		Setup.bsddb
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+=	-bsddb
.  else
LIB_DEPENDS+=		lib/db4/db.=4:db-4.*:databases/db/v4
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-bsddb"
LIB_DEPENDS=		lib/db4/db.=4:db-4.*:databases/db/v4
.endif

.if empty(FLAVOR:L:Mno_gdbm)
BUILD_DEPENDS+=		::databases/gdbm
SETUP_LOCAL+=		Setup.gdbm
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+=	-gdbm
.  else
LIB_DEPENDS+=		gdbm.>=3::databases/gdbm
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-gdbm"
LIB_DEPENDS=		gdbm.>=3::databases/gdbm
.endif

.if empty(FLAVOR:L:Mno_idle) && empty(FLAVOR:L:Mno_tkinter)
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+=	-idle
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-idle"
RUN_DEPENDS+=		::lang/python/${VERSION},-tkinter
.endif

.if empty(FLAVOR:L:Mno_tkinter)
BUILD_DEPENDS+=		::x11/tk/8.4
SETUP_LOCAL+=		Setup.tkinter
PKG_ARGS+=		-Dtkinter=1
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+=	-tkinter
.  else
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4
.  endif
.else
PKG_ARGS+=		-Dtkinter=0
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-tkinter"
LIB_DEPENDS=		tk84:tk-8.4.*:x11/tk/8.4
WANTLIB=		tcl84 X11
.endif

.if empty(FLAVOR:L:Mno_mpz) && ${VERSION} == "2.3"
BUILD_DEPENDS+=		::devel/gmp
SETUP_LOCAL+=		Setup.mpz
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+= 	-mpz
.  else
LIB_DEPENDS+=		gmp::devel/gmp
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-mpz"
LIB_DEPENDS=		gmp::devel/gmp
.endif

.if empty(FLAVOR:L:Mno_expat)
.  if ${VERSION} == "2.3"
BUILD_DEPENDS+=		::textproc/expat
SETUP_LOCAL+=		Setup.expat
.  endif
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+= 	-expat
.  else if ${VERSION} == "2.3"
LIB_DEPENDS+=		expat.>=4.0:expat->=1.95.6:textproc/expat
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-expat" && ${VERSION} == "2.3"
LIB_DEPENDS=		expat.>=4.0:expat->=1.95.6:textproc/expat
.endif

# Strip off no_xxx flavors from the package name if we are not
# building the "monster" Python for platforms without shared libraries.

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
FULLPKGNAME=${PKGNAME}${FLAVOR_EXT:S/-no_bsddb//:S/-no_expat//:S/-no_gdbm//:S/-no_idle//:S/-no_mpz//:S/-no_tkinter//}
.endif

FULLPKGNAME-expat=	python-expat-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-gdbm=	python-gdbm-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-idle=	python-idle-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-mpz=	python-mpz-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tests=	python-tests-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tkinter=	python-tkinter-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}
FULLPKGNAME-tools=	python-tools-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

AUTOCONF_VERSION=	2.57
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS+=	--with-fpectl --with-threads --srcdir=${WRKSRC}
CONFIGURE_ARGS+=	--enable-ipv6

# THREAD_STACK_SIZE value might be changed by particular python release
THREAD_STACK_SIZE?=    0x20000

REGRESS_TARGET=	test

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
NO64BIT=	\#
.endif

.if defined(NO64BIT)
PKG_ARGS+=-Dmm=0
.else
PKG_ARGS+=-Dmm=1
.endif

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
NOSHARED=	\#
CONFIGURE_ENV+=	OPT='${CFLAGS}' LDFLAGS='-L${WRKSRC}'
.else
CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=${THREAD_STACK_SIZE} -fPIC' \
		LDFLAGS='-L${WRKSRC}'
MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION} \
		LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
FAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython${VERSION}_VERSION} \
		LD_LIBRARY_PATH=${WRKSRC} RANLIB=:
.endif

ALL_TARGET=	all ${WRKSRC}/Lib/plat-openbsd4

post-configure:
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
	     -e 's,@NO64BIT@,${NO64BIT},g'   \
		${FILESDIR}/Setup > ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
		${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor
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
