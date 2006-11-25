# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:33 espie Exp $

COMMENT= 	"dispatcher for command line interface programs"

MODULES=	cpan
DISTNAME=	App-CLI-0.06
CATEGORIES=	www devel

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Locale-Maketext-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
