# $OpenBSD: Makefile.inc,v 1.5 2002/05/11 21:35:13 matt Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

COMMENT=	"interpreted object-oriented programming language"
COMMENT-tests=	"Python test suite"
COMMENT-tools=	"extra tools for Python"
COMMENT-mpz=	"GNU arbitrary magnitude integer module for Python"
COMMENT-tkinter="tk GUI module for Python"
COMMENT-expat=	"expat module for Python"

PKGNAME=	python-${VERSION}${PATCHLEVEL}
DISTNAME=	Python-${VERSION}${PATCHLEVEL}
CATEGORIES=	lang
NEED_VERSION=	1.527
MASTER_SITES=	ftp://ftp.python.org/pub/%SUBDIR%/ \
		ftp://python.mirrors.netnumina.com/python/pub/%SUBDIR%/ \
		http://www.linux.org.hk/mirror/python/ftp/%SUBDIR%/
MASTER_SITE_SUBDIR= python/${VERSION}${PATCHLEVEL}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Matt Behrens <matt@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_mpz no_tkinter no_expat
FLAVOR?=

MULTI_PACKAGES=	-tests -tools
SUBPACKAGE?=

# All subpackages depend on the main python package.

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		::lang/python/${VERSION}
.endif

# On architectures with shared libs, no_xxx flavors are a convenient
# way to avoid pulling in dependencies, and don't actually show up
# in the final package names.  On architectures without shared libs,
# no_xxx flavors dictate what gets linked into the Python binary.

.if empty(FLAVOR:L:Mno_tkinter)
BUILD_DEPENDS+=		::x11/tk/8.3
SETUP_LOCAL+=		Setup.tkinter
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+=	-tkinter
SED_PLIST+=		| sed -e '/^%%tkinter%%/d' \
			| sed -e '/^%%tkinter_no_shared%%/r${PKGDIR}/PFRAG-tkinter.no_shared' -e '//d'
.  else
SED_PLIST+=		| sed -e '/^%%tkinter%%/r${PKGDIR}/PFRAG-tkinter.no_shared' -e '//d'
LIB_DEPENDS+=		tk83::x11/tk/8.3
.  endif
.else
SED_PLIST+=		| sed -e '/^%%tkinter%%/d'
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-tkinter"
LIB_DEPENDS+=		tk83::x11/tk/8.3
.endif

.if empty(FLAVOR:L:Mno_mpz)
BUILD_DEPENDS+=		::devel/gmp
SETUP_LOCAL+=		Setup.mpz
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+= 	-mpz
.  else
LIB_DEPENDS+=		gmp::devel/gmp
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-mpz"
LIB_DEPENDS+=		gmp::devel/gmp
.endif

.if empty(FLAVOR:L:Mno_expat)
BUILD_DEPENDS+=		::textproc/expat
SETUP_LOCAL+=		Setup.expat
.  if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MULTI_PACKAGES+= 	-expat
.  else
LIB_DEPENDS+=		expat::textproc/expat
.  endif
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-expat"
LIB_DEPENDS+=		expat::textproc/expat
.endif

# Strip off no_xxx flavors from the package name if we are not
# building the "monster" Python for platforms without shared libraries.

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
FULLPKGNAME=${PKGNAME}${FLAVOR_EXT:S/-no_mpz//:S/-no_tkinter//:S/-no_expat//}
.endif

FULLPKGNAME-tests=	python-tests-${VERSION}${PATCHLEVEL}
FULLPKGNAME-tools=	python-tools-${VERSION}${PATCHLEVEL}
FULLPKGNAME-mpz=	python-mpz-${VERSION}${PATCHLEVEL}
FULLPKGNAME-tkinter=	python-tkinter-${VERSION}${PATCHLEVEL}
FULLPKGNAME-expat=	python-expat-${VERSION}${PATCHLEVEL}

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-fpectl --with-threads --without-pymalloc

REGRESS_TARGET=	test

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "sparc64"
NO64BIT=	\#
.endif

.if defined(NO64BIT)
SED_PLIST+=-e '/%%mm%%/d'
.else
SED_PLIST+=-e '/%%mm%%/r${PKGDIR}/PFRAG.mm' -e '//d'
.endif

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
NOSHARED=	\#
CONFIGURE_ENV+=	OPT='${CFLAGS}' LDFLAGS='-L${WRKSRC}'
.else
CONFIGURE_ENV+= OPT='${CFLAGS} -DTHREAD_STACK_SIZE=0x20000 -fPIC' \
		LDFLAGS='-L${WRKSRC}'
MAKE_FLAGS+=	MAJOR=0 MINOR=0 LDLIBRARY=libpython${VERSION}.so.0.0 \
		LD_LIBRARY_PATH=${WRKSRC}
FAKE_FLAGS+=	MAJOR=0 MINOR=0 LDLIBRARY=libpython${VERSION}.so.0.0 \
		LD_LIBRARY_PATH=${WRKSRC} RANLIB=:
.endif

ALL_TARGET=	all ./Lib/plat-openbsd3

patch:

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
	${INSTALL_SCRIPT} ${FILESDIR}/pydoc ${PREFIX}/bin/pydoc${VERSION}
	@strip ${PREFIX}/bin/python
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
		tar -xf -)
	${INSTALL_DATA} ${WRKSRC}/libpython${VERSION}.a \
		${PREFIX}/lib/python${VERSION}/config
	@if [ -f ${PREFIX}/lib/python${VERSION}/config/libpython${VERSION}.so.0.0 ]; then \
		cd ${PREFIX}/lib && ln -s python${VERSION}/config/libpython${VERSION}.so.0.0; \
	fi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD

