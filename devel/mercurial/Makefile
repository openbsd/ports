# $OpenBSD: Makefile,v 1.3 2006/09/22 04:22:26 pvalchev Exp $

COMMENT=		"fast, lightweight source control management"

VERSION=		0.9.1
DISTNAME=		mercurial-${VERSION}
CATEGORIES=     	devel
HOMEPAGE=		http://www.selenic.com/mercurial/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.selenic.com/mercurial/release/

USE_GMAKE=		Yes
MODULES=		lang/python
# REGRESS_TARGET= tests  # Currently incompatible with BSD merge

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/hg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgignore.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/hgmerge.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/mercurial/
.for file in bash_completion mercurial.el sample.hgrc tcsh_completion zsh_completion
	${INSTALL_DATA} ${WRKSRC}/contrib/${file} ${PREFIX}/share/mercurial/.
.endfor
.for script in convert-repo darcs2hg.py hg-ssh hgdiff hgk tcsh_completion_build.sh
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/${script} ${PREFIX}/share/mercurial/.
.endfor
.for dir in git-viz hgsh purge vim
	@cp -rp ${WRKSRC}/contrib/${dir} ${PREFIX}/share/mercurial/.
.endfor


.include <bsd.port.mk>
