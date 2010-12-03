# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT =	XS for C++

MODULES =	cpan
DISTNAME =	ExtUtils-XSpp-0.04
REVISION =	0
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
