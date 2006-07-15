# $OpenBSD: Makefile,v 1.1.1.1 2006/07/15 20:20:23 steven Exp $

COMMENT=	"write a cross-platform Excel binary file"

DISTNAME=	Spreadsheet-WriteExcel-2.17
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

MAINTAINER=	Alexey E. Suslikov <alexey.suslikov@gmail.com>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Spreadsheet/}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-WriteExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
