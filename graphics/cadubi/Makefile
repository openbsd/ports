# $OpenBSD: Makefile,v 1.2 2001/09/15 23:26:38 jcs Exp $

DISTNAME=	cadubi_1.1b1
PKGNAME=	${DISTNAME:S/_/-/g}
CATEGORIES=	graphics editors
NEED_VERSION=	1.420

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	"May not be used in a for-profit package"
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"ASCII drawing utility"
HOMEPAGE=	http://www.logicallemon.com/cadubi/
MASTER_SITES=	ftp://logicallemon.com/pub/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
RUN_DEPENDS=	${PERL_MODULES}/Term/ReadKey.pm::devel/p5-Term-ReadKey

WRKDIST=	${WRKDIR}/cadubi
NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/CADUBI.pl ${PREFIX}/libexec
	@mkdir ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/CADUBI.help ${PREFIX}/share/doc/cadubi

.include <bsd.port.mk>
