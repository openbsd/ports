# $OpenBSD: Makefile,v 1.2 2010/07/03 03:41:42 jim Exp $

COMMENT=	watch for changes to files, cross-platform style

MODULES=	cpan
DISTNAME=	File-ChangeNotify-0.13
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	::devel/p5-Class-MOP \
		::devel/p5-Moose \
		::devel/p5-MooseX-Params-Validate \
		::devel/p5-MooseX-SemiAffordanceAccessor

MAKE_ENV +=	TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
