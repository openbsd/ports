# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:49 naddy Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Spreadsheet-WriteExcel-2.40
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
