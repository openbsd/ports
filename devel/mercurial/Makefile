# $OpenBSD: Makefile,v 1.1.1.1 2006/05/28 15:39:59 avsm Exp $

COMMENT=		"fast, lightweight source control management"

VERSION=		0.9
DISTNAME=		mercurial-${VERSION}
CATEGORIES=     	devel
HOMEPAGE=		http://www.selenic.com/mercurial/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.selenic.com/mercurial/release/

USE_GMAKE=		Yes
MODULES=		lang/python
# REGRESS_TARGET= tests  # (some tests also fail on Linux)

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/hg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgignore.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/hgmerge.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/hgrc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
