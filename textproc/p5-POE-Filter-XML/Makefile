# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:04 sthen Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-1.140700
CATEGORIES=		textproc

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
