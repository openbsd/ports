# $OpenBSD: Makefile,v 1.87 2013/01/01 18:35:42 dcoppa Exp $

COMMENT-main =	GIT - Tree History Storage Tool
COMMENT-svn =	GIT - subversion interoperability tools
COMMENT-x11 =	GIT - graphical tools

V =		1.8.0.3
DISTNAME =	git-${V}
PKGNAME-main =	${DISTNAME}
PKGNAME-svn =	git-svn-${V}
PKGNAME-x11 =	git-x11-${V}
CATEGORIES =	devel

HOMEPAGE =	http://git-scm.com/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

DOC_DISTFILE =		git-manpages-${V}${EXTRACT_SUFX}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES =		http://git-core.googlecode.com/files/

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

MAKE_ENV =		prefix=${PREFIX} CC="${CC}" CFLAGS="${CFLAGS}" V=1 \
			sysconfdir=${SYSCONFDIR} \
			TCLTK_PATH=${MODTK_BIN} \
			TCL_PATH=${MODTCL_BIN} \
			REGRESS_SHELL=${LOCALBASE}/bin/bash

USE_GMAKE =		Yes
USE_GROFF =		Yes

REGRESS_DEPENDS =	archivers/zip \
			devel/cvsps \
			devel/subversion,-perl \
			shells/bash

GITWEB =		README INSTALL git-favicon.png git-logo.png \
			gitweb.cgi gitweb.css

# Skipt tests I have to fix.
SKIP_TESTS =		t9502-gitweb-standalone-parse-output.sh

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

do-regress:
	cd ${WRKSRC}/t && rm -f ${SKIP_TESTS}
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} \
		HOME=${WRKDIST}/t/trash test

.include <bsd.port.mk>
