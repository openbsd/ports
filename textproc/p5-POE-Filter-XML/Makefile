# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:48 sthen Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-1.140700
CATEGORIES=		textproc
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-NonMoose \
			devel/p5-MooseX-InsideOut \
			textproc/p5-XML-SAX>=0.16 \
			textproc/p5-XML-LibXML

TEST_DEPENDS=		devel/p5-Test-Pod

TEST_ENV=		RELEASE_TESTING=1

.include <bsd.port.mk>
