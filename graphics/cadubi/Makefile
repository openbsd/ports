# $OpenBSD: Makefile,v 1.6 2002/10/27 00:03:16 naddy Exp $

DISTNAME=	cadubi_1.2
PKGNAME=	${DISTNAME:S/_/-/g}
CATEGORIES=	graphics editors

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	"May not be used in a for-profit package"
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"ASCII drawing utility"
HOMEPAGE=	http://www.logicallemon.com/cadubi/
MASTER_SITES=	ftp://ftp.logicallemon.com/pub/cadubi/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

RUN_DEPENDS=	::devel/p5-Term-ReadKey

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/CADUBI.pl ${PREFIX}/libexec
	@mkdir ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/CADUBI.help ${PREFIX}/share/doc/cadubi

.include <bsd.port.mk>
