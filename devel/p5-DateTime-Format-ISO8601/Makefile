# $OpenBSD: Makefile,v 1.9 2011/01/02 18:07:48 benoit Exp $

COMMENT= 	DateTime parser for ISO8601 date formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-ISO8601-0.07
CATEGORIES=	devel
EPOCH =		0

USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS =	devel/p5-Test-Distribution \
			devel/p5-Test-Pod
RUN_DEPENDS=		devel/p5-DateTime-Format-Builder

CONFIGURE_STYLE=modbuild

MAKE_ENV=TEST_POD=Yes

.include <bsd.port.mk>
