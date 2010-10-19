# $OpenBSD: Makefile,v 1.4 2010/10/19 07:54:22 espie Exp $

COMMENT= 	use shorter names in catalyst tt views

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.01
CATEGORIES=	textproc devel
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Catalyst-View-TT \
		::www/p5-Catalyst-Plugin-Singleton

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
