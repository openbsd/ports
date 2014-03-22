# $OpenBSD: Makefile,v 1.8 2014/03/22 14:00:43 jasper Exp $

COMMENT=	watch for changes to files, cross-platform style

MODULES=	cpan
DISTNAME=	File-ChangeNotify-0.20
REVISION=	0
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Moose>=2.1204 \
		devel/p5-MooseX-Params-Validate \
		devel/p5-MooseX-SemiAffordanceAccessor \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
