# $OpenBSD: Makefile,v 1.13 2014/04/03 02:52:52 bcallah Exp $

COMMENT=	translate common internet acronyms

DISTNAME=	wtf-20140310
CATEGORIES=	games

MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

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

.include <bsd.port.mk>
