# $OpenBSD: Makefile,v 1.12 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
DISTNAME=	Spreadsheet-WriteExcel-2.37
REVISION=	1
CATEGORIES=	misc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-OLE-Storage_Lite \
		devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
