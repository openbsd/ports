# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	perl interface to the Twitter API

DISTNAME=	Net-Twitter-3.13008
REVISION=	0

CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	converters/p5-JSON-Any \
		devel/p5-Data-Visitor \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-MooseX-AttributeHelpers \
		devel/p5-MooseX-MultiInitArg \
		devel/p5-namespace-autoclean \
		net/p5-Net-OAuth \
		net/p5-POE-Filter-IRCD 
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=	devel/p5-Test-Deep \
			devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	yes

.include <bsd.port.mk>
