# $OpenBSD: Makefile,v 1.36 2016/04/27 18:18:12 jasper Exp $

COMMENT=	translate common internet acronyms

DISTNAME =	wtf-20160421
CATEGORIES=	games

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bsdwtf/}

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-configure:
	@perl -pi -e "s#/usr#${PREFIX}#" ${WRKSRC}/wtf{,.6}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/wtf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wtf.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/acronyms{,.comp} ${PREFIX}/share/misc
	${INSTALL_DATA} ${WRKSRC}/acronyms-o.real ${PREFIX}/share/misc/acronyms-o

.include <bsd.port.mk>
