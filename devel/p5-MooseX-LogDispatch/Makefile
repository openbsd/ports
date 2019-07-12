# $OpenBSD: Makefile,v 1.12 2019/07/12 21:02:17 sthen Exp $

COMMENT=		logging role for Moose

DISTNAME=		MooseX-LogDispatch-1.2002

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-IO-stringy \
			devel/p5-Log-Dispatch-Config \
			devel/p5-Moose \
			devel/p5-Test-Exception
TEST_DEPENDS =  	devel/p5-Class-Load \
	                devel/p5-Devel-GlobalDestruction \
        	        devel/p5-Module-Runtime \
                	devel/p5-MRO-Compat

.include <bsd.port.mk>
