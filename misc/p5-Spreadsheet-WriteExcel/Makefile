# $OpenBSD: Makefile,v 1.9 2010/10/03 15:16:24 jasper Exp $

COMMENT=	write a cross-platform Excel binary file

MODULES=	cpan
DISTNAME=	Spreadsheet-WriteExcel-2.37
REVISION=	0
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-OLE-Storage_Lite \
		::devel/p5-Parse-RecDescent

MODCPAN_EXAMPLES= Yes

.include <bsd.port.mk>
