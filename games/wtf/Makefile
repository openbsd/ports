# $OpenBSD: Makefile,v 1.87 2019/12/07 14:45:13 bcallah Exp $

COMMENT =	translate common internet acronyms

DISTNAME =	wtf-20191201
CATEGORIES =	games

HOMEPAGE =	https://sourceforge.net/projects/bsdwtf/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bsdwtf/}

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-configure:
	@perl -pi -e "s#/usr#${PREFIX}#" ${WRKSRC}/wtf{,.6}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/wtf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wtf.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/acronyms{,.comp} ${PREFIX}/share/misc
	${INSTALL_DATA} ${WRKSRC}/acronyms-o.real ${PREFIX}/share/misc/acronyms-o

.include <bsd.port.mk>
