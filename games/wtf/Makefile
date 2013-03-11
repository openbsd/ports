# $OpenBSD: Makefile,v 1.9 2013/03/11 11:07:41 espie Exp $

COMMENT=	translate common internet acronyms

DISTNAME=	wtf-20071004
REVISION=	0
CATEGORIES=	games

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.mu.org/~mux/wtf/

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-configure:
	@perl -pi -e "s#/usr#${PREFIX}#" ${WRKSRC}/wtf{,.6}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/wtf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wtf.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/acronyms{,.comp} ${PREFIX}/share/misc

.include <bsd.port.mk>
