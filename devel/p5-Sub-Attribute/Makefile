# $OpenBSD: Makefile,v 1.1.1.1 2017/11/29 13:05:14 bluhm Exp $

COMMENT =	reliable subroutine attribute handlers

DISTNAME =	Sub-Attribute-0.06

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Class-Trigger>=0.14 \
			devel/p5-MRO-Compat>=0.09 \
			devel/p5-Module-Install-AuthorTests \
			devel/p5-Module-Install-Repository \
			devel/p5-Module-Install-XSUtil
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Pod-Coverage

CONFIGURE_STYLE =	modinst

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

post-extract:
	rm -rf -- ${WRKSRC}/inc

.include <bsd.port.mk>
