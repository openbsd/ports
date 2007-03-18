# $OpenBSD: Makefile,v 1.1.1.1 2007/03/18 20:05:56 jasper Exp $

COMMENT=		"determine file types"

DISTNAME=		File-MimeInfo-0.13
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		PARDUS/File-MimeInfo

RUN_DEPENDS=		::devel/p5-File-BaseDir
REGRESS_DEPENDS=	::devel/p5-File-DesktopEntry

.include <bsd.port.mk>
