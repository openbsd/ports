# $OpenBSD: Makefile,v 1.1.1.1 2004/06/18 13:53:41 sturm Exp $

COMMENT=	"translate common internet acronyms"

DISTNAME=	wtf-20040124
CATEGORIES=	games

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mu.org/~mux/wtf/

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

do-configure:
	@perl -pi -e "s#/usr#${PREFIX}#" ${WRKSRC}/wtf{,.6}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/wtf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wtf.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/acronyms{,.comp} ${PREFIX}/share/misc

.include <bsd.port.mk>
