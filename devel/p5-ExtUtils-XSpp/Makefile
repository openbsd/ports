# $OpenBSD: Makefile,v 1.4 2010/11/15 19:46:03 espie Exp $

COMMENT =	XS for C++

MODULES =	cpan
DISTNAME =	ExtUtils-XSpp-0.04
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE =	modbuild
REGRESS_DEPENDS =	devel/p5-Test-Base \
			devel/p5-Test-Differences

.include <bsd.port.mk>
