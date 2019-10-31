# $OpenBSD: Makefile,v 1.8 2019/10/31 03:22:07 afresh1 Exp $

COMMENT =	driver to format LaTeX documents

DISTNAME =	LaTeX-Driver-0.300.2
CATEGORIES =	textproc

MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	print/texlive/base \
		devel/p5-Class-Accessor>=0 \
		devel/p5-Exception-Class>=0 \
		devel/p5-File-Slurp>=0 \
		devel/p5-File-pushd>=0 \
		devel/p5-Readonly>=0

TEST_DEPENDS=          print/texlive/texmf,-full

.include <bsd.port.mk>
