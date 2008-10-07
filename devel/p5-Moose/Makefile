# $OpenBSD: Makefile,v 1.3 2008/10/07 17:01:42 jasper Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.58
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

CONFIGURE_STYLE=build

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.66:devel/p5-Class-MOP \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-LongString

.include <bsd.port.mk>
