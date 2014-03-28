# $OpenBSD: Makefile,v 1.111 2014/03/28 11:46:56 dcoppa Exp $

COMMENT-main =	GIT - Tree History Storage Tool
COMMENT-svn =	GIT - subversion interoperability tools
COMMENT-x11 =	GIT - graphical tools

V =		1.9.1
DISTNAME =	git-${V}
PKGNAME-main =	${DISTNAME}
PKGNAME-svn =	git-svn-${V}
PKGNAME-x11 =	git-x11-${V}
CATEGORIES =	devel

HOMEPAGE =	http://git-scm.com/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM = Yes

DOC_DISTFILE =		git-manpages-${V}${EXTRACT_SUFX}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES =		https://www.kernel.org/pub/software/scm/git/

MODULES =		devel/gettext x11/tk

BUILD_DEPENDS =		devel/p5-Error

MULTI_PACKAGES =	-main -svn -x11

WANTLIB-main =		c expat crypto curl pthread ssl z ${MODGETTEXT_WANTLIB}
RUN_DEPENDS-main =	net/rsync \
			devel/p5-Error \
			devel/cvsps \
			${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-main =	net/curl \
			${MODGETTEXT_LIB_DEPENDS}

RUN_DEPENDS-svn =	${BASE_PKGPATH} \
			devel/p5-Term-ReadKey \
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
			gitexecdir=libexec/git \
			TCLTK_PATH=${MODTK_BIN} \
			TCL_PATH=${MODTCL_BIN}
MAKE_ENV =		TEST_TAR=${LOCALBASE}/bin/gtar

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--sysconfdir=${SYSCONFDIR} \
			--mandir=${PREFIX}/man \
			--with-curl=${LOCALBASE} \
			--with-iconv=${LOCALBASE} \
			--with-tcltk=${MODTK_BIN} \
			--with-python=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			DIFF=diff TAR=tar

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mno_shared}
CONFIGURE_ENV +=	ac_cv_lib_curl_curl_global_init=yes
MAKE_FLAGS +=		NEEDS_CRYPTO_WITH_SSL=YesPlease \
			NEEDS_SSL_WITH_CURL=YesPlease \
			NEEDS_LIBINTL_BEFORE_LIBICONV=YesPlease
.endif

USE_GMAKE =		Yes
USE_GROFF =		Yes

TEST_DEPENDS =		archivers/gtar \
			archivers/unzip \
			archivers/zip \
			devel/cvsps \
			devel/subversion,-perl

post-extract:
	@mkdir -p ${WRKSRC}/doc
	@cd ${WRKSRC}/doc && ${TAR} -xzf ${FULLDISTDIR}/${DOC_DISTFILE}
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
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/libexec/git
	cd ${WRKBUILD}/gitweb && \
		${MAKE_ENV} ${MAKE_PROGRAM} gitwebdir=${TRUEPREFIX}/share/gitweb install
	perl -pi -e "s|${WRKINST}||g" ${PREFIX}/share/gitweb/gitweb.cgi
	${INSTALL_DATA} ${WRKBUILD}/gitweb/README ${PREFIX}/share/gitweb

do-test:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} \
		HOME=${WRKDIST}/t test

.include <bsd.port.mk>
