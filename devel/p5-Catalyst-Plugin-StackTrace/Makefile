# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT=	"stack trace for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-StackTrace-0.06
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <janus@errornet.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Devel-StackTrace \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
