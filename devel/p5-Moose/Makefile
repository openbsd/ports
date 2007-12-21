# $OpenBSD: Makefile,v 1.2 2007/12/21 02:48:33 msf Exp $

COMMENT=	a complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.33
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	STEVAN

CONFIGURE_STYLE=build

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.49:devel/p5-Class-MOP \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-LongString

.include <bsd.port.mk>
