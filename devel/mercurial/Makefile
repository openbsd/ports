# $OpenBSD: Makefile,v 1.60 2014/05/19 19:15:44 rpointel Exp $

COMMENT-main =		fast, lightweight source control management
COMMENT-x11 =		graphical tooling for mercurial

MODPY_EGG_VERSION =    3.0
DISTNAME =		mercurial-${MODPY_EGG_VERSION}
CATEGORIES =     	devel

PKGNAME-main =		${DISTNAME}
PKGNAME-x11 =		mercurial-x11-${MODPY_EGG_VERSION}

HOMEPAGE =		http://www.selenic.com/mercurial/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mercurial.selenic.com/release/

MODULES =		lang/python x11/tk
USE_GROFF =		Yes

MULTI_PACKAGES =	-main -x11

BUILD_DEPENDS =		devel/gettext
TEST_DEPENDS =	${RUN_DEPENDS} \
			archivers/unzip \
			devel/git
RUN_DEPENDS-x11 +=	${BASE_PKGPATH},-main \
			${MODTK_RUN_DEPENDS}

FILES =			hgeditor hgweb.cgi

CONTRIBFILES =		bash_completion mercurial.el sample.hgrc \
			tcsh_completion zsh_completion \
			mergetools.hgrc mq.el

CONTRIBDIRS =		hgsh vim
SCRIPTS =		convert-repo hg-ssh hgk \
			tcsh_completion_build.sh dumprevlog \
			undumprevlog simplemerge

WANTLIB-main +=		${MODPY_WANTLIB} pthread
WANTLIB-x11 =
PKG_ARCH-x11 =		*

MODPY_ADJ_FILES =	hgweb.cgi \
			contrib/convert-repo \
			contrib/dumprevlog \
			contrib/hg-ssh \
			contrib/simplemerge \
			contrib/undumprevlog
pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/contrib/hgk

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/hg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgignore.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/hgrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/mercurial/
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
	@cd ${WRKSRC}/tests && ${MODPY_BIN} run-tests.py -v 1>&2

.include <bsd.port.mk>
