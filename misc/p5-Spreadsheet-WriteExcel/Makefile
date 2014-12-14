# $OpenBSD: Makefile,v 1.14 2014/12/14 16:59:24 benoit Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
DISTNAME =	Spreadsheet-WriteExcel-2.40
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
