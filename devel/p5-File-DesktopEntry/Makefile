# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:00 espie Exp $

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
USE_GROFF =	Yes

MODULES=		cpan
CPAN_AUTHOR=		PARDUS/File-DesktopEntry

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
