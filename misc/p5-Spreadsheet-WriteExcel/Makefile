# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:58 espie Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
DISTNAME=	Spreadsheet-WriteExcel-2.37
REVISION=	1
CATEGORIES=	misc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
