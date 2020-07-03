# $OpenBSD: Makefile,v 1.15 2020/07/03 21:44:54 sthen Exp $

COMMENT=	filehandle which supports ungetting of multiple bytes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	FileHandle-Unget-0.1634
CATEGORIES=	devel
REVISION=	0

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	www/p5-URI
TEST_DEPENDS=	devel/p5-File-Slurper \
		devel/p5-Perl-Critic \
		devel/p5-Test-Compile \
		devel/p5-Test-Perl-Critic
MAKE_ENV += TEST_AUTHOR=Yes TEST_POD=Yes

.include <bsd.port.mk>
