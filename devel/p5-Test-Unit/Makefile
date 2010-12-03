# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT=	Perl unit testing framework

DISTNAME=	Test-Unit-0.25
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Sebastian Trahm <basti@schleifi.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Error \
		devel/p5-Class-Inner

.include <bsd.port.mk>
