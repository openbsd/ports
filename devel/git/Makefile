COMMENT-main =	distributed version control system
COMMENT-svn =	subversion interoperability tools
COMMENT-x11 =	graphical tools

V =		2.45.2
DISTNAME =	git-${V}
CATEGORIES =	devel

HOMEPAGE =	https://git-scm.com/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>, \
		Klemens Nanni <kn@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

DOC_DISTFILE =		git-manpages-${V}${EXTRACT_SUFX}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

SITES =			https://www.kernel.org/pub/software/scm/git/

MODULES =		perl \
			x11/tk

MODTK_VERSION =		8.6

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/p5-Error \
			textproc/asciidoc \
			textproc/xmlto

MULTI_PACKAGES =	-main -svn -x11

WANTLIB-main =		c crypto curl expat iconv intl pthread ssl z
# for curl
WANTLIB-main +=		nghttp2


RUN_DEPENDS-main =	devel/cvsps \
			devel/got,-gitwrapper \
			devel/p5-Error \
			mail/p5-Mail-Tools

LIB_DEPENDS-main =	devel/gettext,-runtime \
			net/curl

RUN_DEPENDS-svn =	${BASE_PKGPATH} \
			devel/subversion,-perl \
			www/p5-URI \
			www/p5-libwww
LIB_DEPENDS-svn =
WANTLIB-svn =
PKG_ARCH-svn =		*

RUN_DEPENDS-x11 =	${BASE_PKGPATH},-main \
			${MODTK_RUN_DEPENDS}
LIB_DEPENDS-x11 =
WANTLIB-x11 =
PKG_ARCH-x11 =		*

MAKE_FLAGS =		V=1 \
			gitexecdir=${TRUEPREFIX}/libexec/git \
			perllibdir=${TRUEPREFIX}/${P5SITE} \
			NO_PERL_CPAN_FALLBACKS=1 \
			TCLTK_PATH=${MODTK_BIN} \
			TCL_PATH=${MODTCL_BIN}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--sysconfdir=${SYSCONFDIR} \
			--mandir=${PREFIX}/man \
			--with-curl=${LOCALBASE} \
			--with-iconv=${LOCALBASE} \
			--with-tcltk=${MODTK_BIN} \
			--with-python=no
CONFIGURE_ENV =		CPPFLAGS="-I${WRKSRC} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			DIFF=diff TAR=tar

DEBUG_PACKAGES =	-main

USE_GMAKE =		Yes

TEST_DEPENDS =		archivers/unzip \
			archivers/zip \
			devel/cvsps \
			devel/subversion,-perl

# see ${WRKSRC}/t/README for test documentation (GIT_TEST_*, etc.)

# "test" is too verbose and parallel jobs print out of order; allow for
# `make GIT_TEST_TARGET=prove test' to use prove(1) with better output
GIT_TEST_TARGET ?=	test

GIT_TEST_OPTS =		--root=${WRKDIR}/t/ \
			--immediate

GIT_PROVE_OPTS =	-j${MAKE_JOBS} \
			--nocolor \
			--norc \
			-W

GIT_SKIP_TESTS ?=	# empty

TEST_ENV =		GIT_TEST_OPTS=${GIT_TEST_OPTS:Q} \
			GIT_PROVE_OPTS=${GIT_PROVE_OPTS:Q} \
			GIT_SKIP_TESTS=${GIT_SKIP_TESTS:Q} \
			DEFAULT_TEST_TARGET=${GIT_TEST_TARGET}

# one expensive test needs explicit enabling
TEST_ENV +=		GIT_TEST_CLONE_2GB=true

post-extract:
	@mkdir -p ${WRKSRC}/doc
	${TAR} -C ${WRKSRC}/doc -xzf ${FULLDISTDIR}/${DOC_DISTFILE}
	@cd ${WRKSRC} && perl -pi -e "s|/usr/share/git|${TRUEPREFIX}/share/git|g" \
		doc/man1/git-clone.1 doc/man1/git-init.1 doc/man1/gitweb.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/libgit.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/contrib/emacs/*.el \
		${PREFIX}/share/emacs/site-lisp
	cd ${WRKBUILD}/doc && \
		pax -rw . ${PREFIX}/man
	${INSTALL_DATA} ${WRKBUILD}/contrib/hooks/post-receive-email \
		${PREFIX}/share/git-core/templates/hooks/post-receive-email.sample
	${INSTALL_DATA} ${WRKBUILD}/contrib/hooks/setgitperms.perl \
		${PREFIX}/share/git-core/templates/hooks/setgitperms.perl
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/libexec/git
	${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKBUILD}/contrib/subtree \
		${MAKE_FLAGS} install install-man
	perl -pi -e "s|${WRKINST}||g" ${PREFIX}/share/gitweb/gitweb.cgi
	${INSTALL_DATA} ${WRKBUILD}/gitweb/README ${PREFIX}/share/gitweb
	${MODTCL_WISH_ADJ} ${PREFIX}/libexec/git/git-gui--askpass
	rm ${PREFIX}/bin/git-receive-pack	# handled by gitwrapper
	rm ${PREFIX}/bin/git-upload-pack	# handled by gitwrapper

.include <bsd.port.mk>
