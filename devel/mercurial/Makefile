# $OpenBSD: Makefile,v 1.24 2010/05/03 20:23:08 wcmaier Exp $

COMMENT =		fast, lightweight source control management

MODPY_EGG_VERSION =	1.5.2
DISTNAME =		mercurial-${MODPY_EGG_VERSION}
CATEGORIES =     	devel
HOMEPAGE =		http://www.selenic.com/mercurial/

MAINTAINER =		Will Maier <wcmaier@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.selenic.com/mercurial/release/

MODULES =		lang/python \
			devel/gettext

REGRESS_DEPENDS =	${RUN_DEPENDS} \
			::archivers/unzip

FILES =			hgeditor hgweb.cgi hgwebdir.cgi

CONTRIBFILES =		bash_completion mercurial.el sample.hgrc \
			tcsh_completion zsh_completion hgwebdir.fcgi \
			mergetools.hgrc mq.el

CONTRIBDIRS =		git-viz hgsh vim
SCRIPTS =		convert-repo hg-ssh hgdiff hgk \
			tcsh_completion_build.sh dumprevlog \
			undumprevlog rewrite-log simplemerge

# Zap rst2man gunk that confuses nroff/mandoc.
post-build:
.	for file in hg.1 hgignore.5 hgrc.5
	@cd ${WRKSRC}/doc && \
		mv ${file} ${file}.orig && \
		sed -e '/rst2man-indent-level/,/^\.SH/d' < ${file}.orig > ${file}
.	endfor

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

do-regress:
	@cd ${WRKSRC}/tests && ${MODPY_BIN} run-tests.py -v 1>&2

.include <bsd.port.mk>
