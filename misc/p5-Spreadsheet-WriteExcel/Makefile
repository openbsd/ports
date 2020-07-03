# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:30 sthen Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Spreadsheet-WriteExcel-2.40
CATEGORIES=	misc
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
