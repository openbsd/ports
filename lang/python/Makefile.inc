# $OpenBSD: Makefile.inc,v 1.143 2022/01/29 17:44:59 daniel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

COMMENT-main =	interpreted object-oriented programming language
COMMENT-bsddb =	Berkeley db module for Python
COMMENT-gdbm =	GNU dbm module for Python
COMMENT-idle =	IDE for Python
COMMENT-tests =	Python test suite
COMMENT-tkinter = tk GUI module for Python
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
MASTER_SITES =	https://www.python.org/ftp/${PSUBDIR}/
PSUBDIR ?=	python/${FULL_VERSION}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	https://www.python.org/

MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE =	Yes

.if ${VERSION} == "2.7"
MULTI_PACKAGES =	-main -tests -tools -gdbm -idle -tkinter -bsddb
DEBUG_PACKAGES ?=	-main -gdbm -tkinter -bsddb
.else
MULTI_PACKAGES =	-main -tests -gdbm -idle -tkinter
DEBUG_PACKAGES ?=	-main -gdbm -tkinter
.endif

# Python 2.7 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
.if ${VERSION} == "2.7"
ONLY_FOR_ARCHS-bsddb=	amd64 i386
.endif

COMPILER =		base-clang ports-gcc base-gcc

# All subpackages depend on the main python package.

RUN_DEPENDS =		${FULLPKGNAME-main}:lang/python/${VERSION},-main
LIB_DEPENDS =

LIB_DEPENDS-main =	${MODGCC4_CPPLIBDEP} \
			archivers/bzip2 \
			databases/sqlite3 \
			devel/libffi \
			devel/gettext,-runtime
RUN_DEPENDS-main =
WANTLIB-main =		bz2 c crypto expat ffi intl m curses panel pthread \
			readline sqlite3 ssl util z
.if ${VERSION} != "2.7"
LIB_DEPENDS-main +=	archivers/xz
WANTLIB-main +=		lzma
.endif

WANTLIB-tests =
WANTLIB-tools =

LIB_DEPENDS-bsddb =	lang/python/${VERSION},-main
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# XXX recursion: if we have java, then db/v4 depends on libxml
LIB_DEPENDS-bsddb +=	databases/db/v4,no_tcl,no_java,bootstrap
.else
LIB_DEPENDS-bsddb +=	databases/db/v4
.endif
WANTLIB-bsddb =		lib/db4/db>=4 pthread python${VERSION}

LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/python/${VERSION},-main
WANTLIB-gdbm =		gdbm>=3 pthread python${VERSION}

RUN_DEPENDS-idle =	lang/python/${VERSION},-tkinter \
			${RUN_DEPENDS}
WANTLIB-idle =

MODULES +=		x11/tk
# Tcl/Tk version needs to be in sync with patch-setup_py's one
MODTK_VERSION =		8.5
LIB_DEPENDS-tkinter =	lang/python/${VERSION},-main \
			${MODTK_LIB_DEPENDS}
WANTLIB-tkinter =	X11 pthread python${VERSION} \
			${MODTK_WANTLIB}

AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-shared
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS +=	--srcdir=${WRKSRC} \
			--with-fpectl \
			--with-threads \
			--enable-ipv6 \
			--with-system-expat \
			--with-system-ffi

CONFIGURE_ENV += OPT='${CFLAGS} -fPIC' CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib/' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV +=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS +=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
MAKE_FLAGS +=	CFLAGS_NODIST='-I${LOCALBASE}/include' LDFLAGS_NODIST='-L${WRKSRC} -L${LOCALBASE}/lib/'
FAKE_FLAGS +=	RANLIB=:

# Used in PLISTs for files which should not be installed for non-default
# versions of Python (i.e. /usr/local/bin/python3).
PY_DEFAULTONLY ?= "@comment "

PY_PLATFORM =	openbsd${OSMAJOR}
SUBST_VARS +=	FULL_VERSION VERSION_SPEC PY_PLATFORM PY_DEFAULTONLY

# Python itself is clean, but some extensions e.g. py-cryptography
# and QtWebKit require W|X mappings.
USE_WXNEEDED = Yes

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
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/gdb/auto-load/usr/local/bin
	${INSTALL_SCRIPT} ${WRKSRC}/python-gdb.py \
		${PREFIX}/share/gdb/auto-load/usr/local/bin/python${VERSION}-gdb.py

TEST_TARGET=	test
TEST_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}
