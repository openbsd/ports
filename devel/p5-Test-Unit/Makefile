# $OpenBSD: Makefile,v 1.5 2012/09/28 18:56:56 sthen Exp $

COMMENT=	Perl unit testing framework

DISTNAME=	Test-Unit-0.25
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Error \
		devel/p5-Class-Inner

.include <bsd.port.mk>
