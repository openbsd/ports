# $OpenBSD: Makefile,v 1.2 2009/09/06 11:29:47 jolan Exp $

COMMENT =	XS for C++

MODULES =	cpan
DISTNAME =	ExtUtils-XSpp-0.04
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE =	modbuild
REGRESS_DEPENDS =	::devel/p5-Test-Base \
			::devel/p5-Test-Differences

.include <bsd.port.mk>
