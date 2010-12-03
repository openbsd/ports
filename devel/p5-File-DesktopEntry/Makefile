# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=		handle .desktop files

DISTNAME=		File-DesktopEntry-0.04
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-File-BaseDir>=0.03
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

MODULES=		cpan
CPAN_AUTHOR=		PARDUS/File-DesktopEntry

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
