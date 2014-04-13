# $OpenBSD: Makefile.inc,v 1.106 2014/04/13 07:11:10 rpointel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

SHARED_ONLY=	Yes

COMMENT-main =	interpreted object-oriented programming language
COMMENT-bsddb =	Berkeley db module for Python
COMMENT-gdbm =	GNU dbm module for Python
COMMENT-idle =	IDE for Python
COMMENT-tests =	Python test suite
COMMENT-tkinter = tk GUI module for Python
COMMENT-tools =	extra tools for Python

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

CATEGORIES =	lang
MASTER_SITES =	http://www.python.org/ftp/${PSUBDIR}/ \
		http://sunsite.informatik.rwth-aachen.de/python/ftp/${PSUBDIR}/
PSUBDIR ?=	python/${VERSION}${PATCHLEVEL}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://www.python.org/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# PSF license <http://www.python.org/${VERSION}/license.html>
# A summary of changes to Python is required to be distributed
PERMIT_PACKAGE_CDROM =	Yes

.if ${VERSION} == "2.7"
LIB_SUFX =	
MULTI_PACKAGES =	-main -tests -tools -gdbm -idle -tkinter -bsddb
.else
LIB_SUFX =		m
MULTI_PACKAGES =	-main -tests -gdbm -idle -tkinter
.endif

# Python 2.7 lists BSD db 4.6.x as unstable on most architectures (see
# setup.py:allow_db_version). XXX revisit if databases/db/v4 is updated to 4.7
.if ${VERSION} == "2.7"
ONLY_FOR_ARCHS-bsddb=	amd64 i386
.endif

MODULES +=		devel/gettext

# All subpackages depend on the main python package.

RUN_DEPENDS =		${FULLPKGNAME-main}:lang/python/${VERSION},-main
LIB_DEPENDS =

LIB_DEPENDS-main =	archivers/bzip2 \
			devel/libffi \
			${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-main =
WANTLIB-main =		bz2 c crypto expat ffi m ncursesw panelw pthread \
			readline sqlite3 ssl stdc++ util z \
			${MODGETTEXT_WANTLIB}
.if ${VERSION} == "2.7"
WANTLIB-main +=		ossaudio
.elif ${VERSION} == "3.3" || ${VERSION} == "3.4"
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
WANTLIB-bsddb =		lib/db4/db>=4 pthread python${VERSION}${LIB_SUFX}

LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/python/${VERSION},-main
WANTLIB-gdbm =		gdbm>=3 pthread python${VERSION}${LIB_SUFX}

RUN_DEPENDS-idle =	lang/python/${VERSION},-tkinter \
			${RUN_DEPENDS}
WANTLIB-idle =

MODULES +=		x11/tk
# Tcl/Tk version needs to be in sync with patch-setup_py's one
MODTK_VERSION =		8.5
LIB_DEPENDS-tkinter =	lang/python/${VERSION},-main \
			${MODTK_LIB_DEPENDS}
WANTLIB-tkinter =	X11 pthread python${VERSION}${LIB_SUFX} \
			${MODTK_WANTLIB}

USE_GROFF =	Yes

AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
# --srcdir is needed for systrace to work correctly
CONFIGURE_ARGS +=	--srcdir=${WRKSRC} \
			--with-fpectl \
			--with-threads \
			--enable-ipv6 \
			--with-cxx_main \
			--with-system-expat \
			--with-system-ffi

CONFIGURE_ENV += OPT='${CFLAGS} -fPIC' CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib/' SVNVERSION=no \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_ENV +=	LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS +=	LD_LIBRARY_PATH=${WRKSRC} PATH="${WRKDIST}:${PORTPATH}"
MAKE_FLAGS +=	LDFLAGS='-L${WRKSRC}'
FAKE_FLAGS +=	RANLIB=:

ALL_TARGET =	all ./Lib/plat-openbsd5

post-extract:
	rm -r ${WRKDIST}/Modules/expat

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure.ac

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
.if ${VERSION} == "2.7"
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc \
		${PREFIX}/bin/pydoc${VERSION}
	@sed -e "s,@VERSION@,${VERSION},g" -e "s,@LOCALBASE@,${LOCALBASE},g" \
		${FILESDIR}/idle > ${WRKSRC}/idle
	${INSTALL_SCRIPT} ${WRKSRC}/idle ${PREFIX}/bin/idle${VERSION}
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; \
		tar -xf -)
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/2to3 \
		${PREFIX}/bin/python${VERSION}-2to3
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/python${VERSION}
	${INSTALL_DATA} ${FILESDIR}/CHANGES.OpenBSD \
		${PREFIX}/share/doc/python${VERSION}/CHANGES.OpenBSD

TEST_TARGET=	test
TEST_FLAGS=	"EXTRATESTOPTS=-w"
# Some regress tests write to $HOME
PORTHOME=	${WRKDIR}
