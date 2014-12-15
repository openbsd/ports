# $OpenBSD: Makefile,v 1.9 2014/12/15 17:28:55 benoit Exp $

COMMENT=		handle .desktop files

DISTNAME =		File-DesktopEntry-0.08
CATEGORIES=		devel 

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-File-BaseDir>=0.03
BUILD_DEPENDS=		${RUN_DEPENDS}

MODULES=		cpan
CPAN_AUTHOR =		MICHIELB

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
