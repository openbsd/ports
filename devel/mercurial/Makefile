# $OpenBSD: Makefile,v 1.92 2019/01/15 23:21:47 juanfra Exp $

COMMENT-main =		fast, lightweight source control management
COMMENT-x11 =		graphical tooling for mercurial

# Keep in sync with:
#   devel/tortoisehg
MODPY_EGG_VERSION =	4.8.2
DISTNAME =		mercurial-${MODPY_EGG_VERSION}
CATEGORIES =		devel

PKGNAME-main =		${DISTNAME}
PKGNAME-x11 =		mercurial-x11-${MODPY_EGG_VERSION}

HOMEPAGE =		https://www.mercurial-scm.org

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://www.mercurial-scm.org/release/ \
			https://download.tuxfamily.org/jod/devel/mercurial/ \
			ftp://download.tuxfamily.org/jod/devel/mercurial/

MODULES =		lang/python x11/tk
USE_GMAKE =		Yes

MULTI_PACKAGES =	-main -x11

BUILD_DEPENDS =		devel/gettext-tools
TEST_DEPENDS =		${RUN_DEPENDS} \
			archivers/unzip \
			devel/git \
			devel/mercurial,-main \
			devel/mercurial,-x11 \
			sysutils/coreutils
RUN_DEPENDS-x11 +=	${BASE_PKGPATH},-main \
			${MODTK_RUN_DEPENDS}

FILES =			hgeditor hgweb.cgi

CONTRIBFILES =		bash_completion mercurial.el \
			tcsh_completion zsh_completion \
			mq.el

CONTRIBDIRS =		hgsh vim
SCRIPTS =		hg-ssh hgk \
			tcsh_completion_build.sh dumprevlog \
			undumprevlog simplemerge

WANTLIB-main +=		${MODPY_WANTLIB} c pthread
WANTLIB-x11 =
PKG_ARCH-x11 =		*

# This is needed for the development versions
WRKDIST =		${WRKDIR}/${DISTNAME:C/pre20.*$//}

MODPY_ADJ_FILES =	hgweb.cgi \
			contrib/dumprevlog \
			contrib/hg-ssh \
			contrib/simplemerge \
			contrib/undumprevlog
pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/contrib/hgk

post-build:
	cd ${WRKSRC}/contrib/chg && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

post-install:
	${INSTALL_MAN} ${WRKSRC}/contrib/chg/chg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgignore.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/hgrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/mercurial/
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/chg/chg ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/hgeditor ${PREFIX}/share/mercurial
.	for file in ${FILES}
		${INSTALL_DATA} ${WRKSRC}/${file} \
			${PREFIX}/share/mercurial
.	endfor
.	for file in ${CONTRIBFILES}
		${INSTALL_DATA} ${WRKSRC}/contrib/${file} \
			${PREFIX}/share/mercurial
.	endfor
.	for dir in ${CONTRIBDIRS}
		${INSTALL_DATA_DIR} ${PREFIX}/share/mercurial/${dir}
		${INSTALL_DATA} ${WRKSRC}/contrib/${dir}/* \
			${PREFIX}/share/mercurial/${dir}
.	endfor
.	for script in ${SCRIPTS}
		${INSTALL_SCRIPT} ${WRKSRC}/contrib/${script} \
			${PREFIX}/share/mercurial
.	endfor
	# hgk needs to be in the path for 'hg view' to work
	ln -s ${TRUEPREFIX}/share/mercurial/hgk ${PREFIX}/bin/hgk

do-test:
	@echo "Running the tests with ${MAKE_JOBS} jobs."
	@rm -rf ${WRKSRC}/tmp-tests
	@echo '#!/bin/sh\nexec gls ' "\"\$$@\"" > ${WRKDIR}/bin/ls
	@echo '#!/bin/sh\nexec gcp ' "\"\$$@\"" > ${WRKDIR}/bin/cp
	@chmod +x ${WRKDIR}/bin/ls ${WRKDIR}/bin/cp
	@mkdir ${WRKSRC}/tests-openbsd-home
	@echo '[ui]\nusername = OpenBSD Tests <openbsd@localhost>' \
		> ${WRKSRC}/tests-openbsd-home/.hgrc
	@cd ${WRKSRC}/tests && ${SETENV} ${ALL_TEST_ENV} \
		HOME=${WRKSRC}/tests-openbsd-home \
		${MODPY_BIN} run-tests.py -j${MAKE_JOBS} \
		--shell=/bin/ksh --with-hg=${LOCALBASE}/bin/hg 1>&2

.include <bsd.port.mk>
