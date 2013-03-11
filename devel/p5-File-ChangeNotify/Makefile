# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:17 espie Exp $

COMMENT=	watch for changes to files, cross-platform style

MODULES=	cpan
DISTNAME=	File-ChangeNotify-0.20
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Class-MOP \
		devel/p5-Moose \
		devel/p5-MooseX-Params-Validate \
		devel/p5-MooseX-SemiAffordanceAccessor \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
