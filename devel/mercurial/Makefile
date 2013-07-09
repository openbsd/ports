# $OpenBSD: Makefile,v 1.55 2013/07/09 10:00:00 rpointel Exp $

COMMENT =		fast, lightweight source control management

MODPY_EGG_VERSION =	2.6.3
DISTNAME =		mercurial-${MODPY_EGG_VERSION}
CATEGORIES =     	devel

HOMEPAGE =		http://www.selenic.com/mercurial/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mercurial.selenic.com/release/

MODULES =		lang/python
USE_GROFF =		Yes

BUILD_DEPENDS =		devel/gettext
TEST_DEPENDS =	${RUN_DEPENDS} \
			archivers/unzip \
			devel/git

FILES =			hgeditor hgweb.cgi

CONTRIBFILES =		bash_completion mercurial.el sample.hgrc \
			tcsh_completion zsh_completion \
			mergetools.hgrc mq.el

CONTRIBDIRS =		hgsh vim
SCRIPTS =		convert-repo hg-ssh hgk \
			tcsh_completion_build.sh dumprevlog \
			undumprevlog simplemerge

WANTLIB +=		${MODPY_WANTLIB} pthread

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

do-test:
	@cd ${WRKSRC}/tests && ${MODPY_BIN} run-tests.py -v 1>&2

.include <bsd.port.mk>
