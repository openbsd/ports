# $OpenBSD: Makefile,v 1.1.1.1 2007/11/12 14:27:33 msf Exp $

COMMENT=	a complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.26
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	STEVAN

CONFIGURE_STYLE=build

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-MOP \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-LongString

.include <bsd.port.mk>
