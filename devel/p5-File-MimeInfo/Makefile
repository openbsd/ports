# $OpenBSD: Makefile,v 1.2 2007/08/26 18:36:16 simon Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.14
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

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
