# $OpenBSD: Makefile,v 1.9 2007/11/28 16:13:46 okan Exp $

COMMENT=		fast, lightweight source control management

DISTNAME=		mercurial-0.9.5
CATEGORIES=     	devel
HOMEPAGE=		http://www.selenic.com/mercurial/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.selenic.com/mercurial/release/

MODULES=		lang/python

# Many regress tests broken on OpenBSD.
NO_REGRESS=		Yes

CONTRIBFILES=		bash_completion mercurial.el sample.hgrc \
			tcsh_completion zsh_completion
CONTRIBDIRS=		git-viz hgsh vim
SCRIPTS=		convert-repo darcs2hg.py hg-ssh hgdiff hgk \
			tcsh_completion_build.sh

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/hg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgignore.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/hgmerge.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/mercurial/
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

.include <bsd.port.mk>
