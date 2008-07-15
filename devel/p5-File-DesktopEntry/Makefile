# $OpenBSD: Makefile,v 1.3 2008/07/15 18:23:14 dhill Exp $

COMMENT=		handle .desktop files

DISTNAME=		File-DesktopEntry-0.04
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-File-BaseDir->=0.03:devel/p5-File-BaseDir
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

MODULES=		cpan
CPAN_AUTHOR=		PARDUS/File-DesktopEntry

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
