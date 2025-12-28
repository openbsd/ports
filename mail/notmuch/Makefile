COMMENT-main =		mail indexer, tagger and threader
COMMENT-emacs =		Emacs bindings for notmuch
COMMENT-mutt =		Mutt integration for notmuch

V =			0.39
DISTNAME =		notmuch-$V
PKGNAME-main =		notmuch-${V}
PKGNAME-emacs =		notmuch-emacs-${V}
PKGNAME-mutt =		notmuch-mutt-${V}
REVISION-main =		1
REVISION-emacs =	0
REVISION-mutt =		0

SHARED_LIBS +=		notmuch	1.2

CATEGORIES =		mail databases

HOMEPAGE =		https://notmuchmail.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -emacs -mutt
DEBUG_PACKAGES =	-main

WANTLIB-main +=		${COMPILER_LIBCXX} c glib-2.0 gmime-3.0 gobject-2.0
WANTLIB-main +=		pthread talloc xapian z

SITES =			${HOMEPAGE}releases/

EXTRACT_SUFX =		.tar.xz

COMPILER=		base-clang ports-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No
MODPY_PYTEST =		Yes

LIB_DEPENDS =		databases/xapian-core \
			devel/libtalloc \
			mail/gmime30

RUN_DEPENDS-emacs =	devel/desktop-file-utils \
			databases/xapian-core \
			editors/emacs \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}

RUN_DEPENDS-mutt =	devel/p5-Term-ReadLine-Gnu \
			mail/p5-Mail-Box \
			mail/p5-Mail-Tools \
			devel/p5-Devel-GlobalDestruction \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}

# this builds, though does not currently install, cffi-based Python
# bindings using its own Makefile rather than the standard ports
# Python build infra.
BUILD_DEPENDS =		devel/py-cffi \
			devel/py-setuptools \
			editors/emacs,gtk3 \
			security/gnupg>=2.2.23p1 \
			shells/bash \
			shells/bash-completion \
			textproc/py-sphinx

TEST_DEPENDS =		archivers/gtar \
			devel/gdb \
			misc/dtach \
			sysutils/coreutils \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info \
			--sysconfdir=${SYSCONFDIR} \
			--bashcompletiondir=${PREFIX}/share/notmuch/bash_completion.d \
			--without-api-docs
CONFIGURE_ENV =		PYTHON=${MODPY_BIN}

MAKE_FLAGS =	V=1
MAKE_ENV =	LIBnotmuch_MAJOR=${LIBnotmuch_VERSION:R} \
		LIBnotmuch_MINOR=${LIBnotmuch_VERSION:E}
TEST_FLAGS =	V=1 \
		NOTMUCH_TEST_SERIALIZE=1 \
		TEST_CFLAGS="-O0 -g -I${LOCALBASE}/include -L${LOCALBASE}/lib"

TEST_TARGET =	test

EXAMPLES_DIR =	${PREFIX}/share/examples/notmuch

post-extract:
	cd ${WRKSRC}/test; [ -r test-lib-OPENBSD.sh ] || \
	    cp test-lib-FREEBSD.sh test-lib-OPENBSD.sh

post-install:
	rm ${PREFIX}/man/man1/notmuch-setup.1.gz
	gunzip ${PREFIX}/man/*/*gz
	ln -s notmuch.1 ${PREFIX}/man/man1/notmuch-setup.1

	cd ${WRKBUILD}/contrib/notmuch-mutt && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} ${FAKE_TARGET}
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}/mutt
	mv ${WRKINST}/etc/Muttrc.d/notmuch-mutt.rc ${EXAMPLES_DIR}/mutt/
	rmdir ${WRKINST}/etc/Muttrc.d
	${INSTALL_DATA} ${WRKSRC}/contrib/notmuch-mutt/README \
		${EXAMPLES_DIR}/mutt/

.include <bsd.port.mk>
