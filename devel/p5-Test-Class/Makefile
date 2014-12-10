# $OpenBSD: Makefile,v 1.14 2014/12/10 07:58:15 benoit Exp $

COMMENT=	easily create test classes in an xUnit style

MODULES=	cpan
DISTNAME =	Test-Class-0.48
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-MRO-Compat \
		devel/p5-Module-Runtime \
		devel/p5-Try-Tiny
            
.include <bsd.port.mk>
