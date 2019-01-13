# $OpenBSD: Makefile,v 1.13 2019/01/13 14:56:01 cwen Exp $

COMMENT=	filehandle which supports ungetting of multiple bytes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	FileHandle-Unget-0.1634
CATEGORIES=	devel

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	www/p5-URI
TEST_DEPENDS=	devel/p5-File-Slurper \
		devel/p5-Perl-Critic \
		devel/p5-Test-Compile \
		devel/p5-Test-Perl-Critic
MAKE_ENV += TEST_AUTHOR=Yes TEST_POD=Yes

.include <bsd.port.mk>
