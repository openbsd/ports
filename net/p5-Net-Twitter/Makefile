# $OpenBSD: Makefile,v 1.1.1.1 2009/11/25 02:35:10 kevlo Exp $

COMMENT=	perl interface to the Twitter API

DISTNAME=	Net-Twitter-3.09000

CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
RUN_DEPENDS=	::converters/p5-JSON-Any \
		::devel/p5-Data-Visitor \
		::devel/p5-DateTime-Format-Strptime \
		::devel/p5-MooseX-AttributeHelpers \
		::devel/p5-MooseX-MultiInitArg \
		::devel/p5-namespace-autoclean \
		::net/p5-Net-OAuth \
		::net/p5-POE-Filter-IRCD 
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
