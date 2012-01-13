# $OpenBSD: Makefile,v 1.6 2012/01/13 12:24:18 sthen Exp $

COMMENT=	watch for changes to files, cross-platform style

MODULES=	cpan
DISTNAME=	File-ChangeNotify-0.20
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Class-MOP \
		devel/p5-Moose \
		devel/p5-MooseX-Params-Validate \
		devel/p5-MooseX-SemiAffordanceAccessor \
		devel/p5-namespace-autoclean

REGRESS_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
