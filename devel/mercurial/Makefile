# $OpenBSD: Makefile,v 1.5 2006/12/23 04:17:20 jolan Exp $

COMMENT=		"fast, lightweight source control management"

DISTNAME=		mercurial-0.9.3
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

# Many regress tests broken on OpenBSD.
NO_REGRESS=		Yes

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
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/mercurial/${dir}/*
.endfor

.include <bsd.port.mk>
