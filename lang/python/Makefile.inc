# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

COMMENT-main =	interpreted object-oriented programming language
COMMENT-bsddb =	Berkeley db module for Python
COMMENT-gdbm =	GNU dbm module for Python
COMMENT-idle =	IDE for Python
COMMENT-tests =	Python test suite
COMMENT-tkinter = Python interface to the Tk graphical toolkit
COMMENT-tools =	extra tools for Python

VERSION =	${FULL_VERSION:R}

DISTNAME =	Python-${FULL_VERSION}
PKGNAME-main =	python-${FULL_VERSION}
PKGSPEC-main =	python-${VERSION_SPEC}
PKGNAME-bsddb =	python-bsddb-${FULL_VERSION}
PKGSPEC-bsddb =	python-bsddb-${VERSION_SPEC}
PKGNAME-gdbm =	python-gdbm-${FULL_VERSION}
PKGSPEC-gdbm =	python-gdbm-${VERSION_SPEC}
PKGNAME-idle =	python-idle-${FULL_VERSION}
PKGSPEC-idle =	python-idle-${VERSION_SPEC}
PKGNAME-tests =	python-tests-${FULL_VERSION}
PKGSPEC-tests =	python-tests-${VERSION_SPEC}
PKGNAME-tkinter = python-tkinter-${FULL_VERSION}
PKGSPEC-tkinter = python-tkinter-${VERSION_SPEC}
PKGNAME-tools =	python-tools-${FULL_VERSION}
PKGSPEC-tools =	python-tools-${VERSION_SPEC}

CATEGORIES =	lang
SITES =		https://www.python.org/ftp/${PSUBDIR}/
PSUBDIR ?=	python/${FULL_VERSION}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	https://www.python.org/

MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE =	Yes

.if ${VERSION} == "2.7"
V_SUBDIR =		${VERSION}
MULTI_PACKAGES =	-main -tests -tools -gdbm -idle -tkinter -bsddb
DEBUG_PACKAGES ?=	-main -gdbm -tkinter -bsddb

# Python 2.7 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
ONLY_FOR_ARCHS-bsddb=	amd64 i386
.else
V_SUBDIR =		3
MULTI_PACKAGES =	-main -tests -gdbm -idle -tkinter
DEBUG_PACKAGES ?=	-main -gdbm -tkinter
.endif

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

# All subpackages depend on the main python package.

RUN_DEPENDS =		${FULLPKGNAME-main}:lang/python/${V_SUBDIR},-main
LIB_DEPENDS =

LIB_DEPENDS-main +=	archivers/bzip2 \
			databases/sqlite3 \
			devel/libffi \
			devel/gettext,-runtime
RUN_DEPENDS-main =
WANTLIB-main +=		bz2 c crypto expat ffi intl m curses panel pthread \
			readline sqlite3 ssl util z
.if ${VERSION} != "2.7"
LIB_DEPENDS-main +=	archivers/xz \
			security/libb2
WANTLIB-main +=		b2 lzma
.endif

WANTLIB-tests =
WANTLIB-tools =

LIB_DEPENDS-bsddb =	lang/python/${V_SUBDIR},-main
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# XXX recursion: if we have java, then db/v4 depends on libxml
LIB_DEPENDS-bsddb +=	databases/db/v4,no_tcl,no_java,bootstrap
.else
LIB_DEPENDS-bsddb +=	databases/db/v4
.endif
WANTLIB-bsddb =		lib/db4/db>=4 pthread python${VERSION}

LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/python/${V_SUBDIR},-main
WANTLIB-gdbm =		gdbm>=3 pthread python${VERSION}

RUN_DEPENDS-idle =	lang/python/${V_SUBDIR},-tkinter \
			${RUN_DEPENDS}
WANTLIB-idle =

MODULES +=		x11/tk

.if ${VERSION} == "2.7"
MODTK_VERSION =		8.5
.else
MODTK_VERSION =		8.6
.endif

LIB_DEPENDS-tkinter =	lang/python/${V_SUBDIR},-main \
			${MODTK_LIB_DEPENDS}
WANTLIB-tkinter =	pthread python${VERSION} \
			${MODTK_WANTLIB}

AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-shared
CONFIGURE_ARGS +=	--with-fpectl \
			--with-threads \
			--enable-ipv6 \
			--with-system-expat \
			--with-system-ffi \
			--with-tcltk-includes='-I${MODTCL_INCDIR} -I${MODTK_INCDIR} -I${X11BASE}/include' \
			--with-tcltk-libs='-L${X11BASE}/lib -l${MODTCL_LIB} -l${MODTK_LIB}'

.if ${VERSION} != "2.7"
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions
.  if ${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	--with-lto
.    if ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "powerpc"
# On armv7, clang errors out due to lack of memory.
# On powerpc, the python binary would crash by "Segmentation fault".
# XXX lld from llvm-16 errors out with:
# ld.lld: error: relocation R_X86_64_PC32 cannot be used against symbol '__profd_isdigit'; recompile with -fPIC
#CONFIGURE_ARGS +=	--enable-optimizations
.    endif
.  endif
TEST_IS_INTERACTIVE =	Yes
.endif

CONFIGURE_ENV += OPT='${CFLAGS} -fPIC' CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib/' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV +=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS +=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
MAKE_FLAGS +=	CFLAGS_NODIST='-I${LOCALBASE}/include' LDFLAGS_NODIST='-L${WRKSRC} -L${LOCALBASE}/lib/'
FAKE_FLAGS +=	RANLIB=:

PY_PLATFORM =	openbsd${OSMAJOR}
SUBST_VARS +=	FULL_VERSION VERSION_SPEC PY_PLATFORM

# Python itself is clean, but some dlopen()'d extensions e.g. QtWebKit
# require W|X mappings and/or don't have the required landing pads for
# branch-tracking control flow integrity.
USE_WXNEEDED = Yes
USE_NOBTCFI = Yes

.if ${VERSION} == "2.7"
ALL_TARGET =	all ./Lib/plat-${PY_PLATFORM}
.else
ALL_TARGET =	all
.endif

post-extract:
	rm -r ${WRKDIST}/Modules/expat

do-gen:
	${SUBST_CMD} ${WRKSRC}/configure.ac
	${MODGNU_gen}

post-configure:
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile

ADJ_FILES = ${WRKSRC}/Tools/scripts/pydoc* ${WRKSRC}/python-gdb.py
.if ${VERSION} == "2.7"
ADJ_FILES += ${WRKSRC}/Tools/scripts/2to3
.endif

post-build:
	perl -pi -e \
		's@#! */usr/bin/(env +)?python@#!${PREFIX}/bin/python${VERSION}@' \
		${ADJ_FILES}

post-install:
.if ${VERSION} == "2.7"
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc \
		${PREFIX}/bin/pydoc${VERSION}
	@sed -e "s,@VERSION@,${VERSION},g" -e "s,@LOCALBASE@,${LOCALBASE},g" \
		${FILESDIR}/idle > ${WRKSRC}/idle
	${INSTALL_SCRIPT} ${WRKSRC}/idle ${PREFIX}/bin/idle${VERSION}
	cd ${PREFIX}/bin && ln -sf idle${VERSION} idle${VERSION:R}
	mv ${PREFIX}/bin/pydoc ${PREFIX}/bin/pydoc2
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
		tar -xf -)
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/2to3 \
		${PREFIX}/bin/python${VERSION}-2to3
.else
	rm -f ${PREFIX}/bin/pip3 # in devel/py-pip for default Python version
	perl -pi -e \
		's@#!/usr/local/bin/python@#!${PREFIX}/bin/python${VERSION}@' \
		${PREFIX}/bin/pip${VERSION}
.endif
	if [ -e ${FILESDIR}/EXTERNALLY-MANAGED ]; then \
		${INSTALL_DATA} ${FILESDIR}/EXTERNALLY-MANAGED \
		${PREFIX}/lib/python${VERSION}/EXTERNALLY-MANAGED; fi # PEP-668
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/gdb/auto-load/usr/local/bin
	${INSTALL_SCRIPT} ${WRKSRC}/python-gdb.py \
		${PREFIX}/share/gdb/auto-load/usr/local/bin/python${VERSION}-gdb.py
	@for i in _hashlib _ssl; do \
	    if ! [ -r ${PREFIX}/lib/python*/lib-dynload/$$i*.so ]; then echo; \
		echo "*** check logs - $$i was not built!"; echo; exit 1; fi; done

TEST_TARGET=	test
TEST_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}
