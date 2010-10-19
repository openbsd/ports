# $OpenBSD: Makefile,v 1.3 2010/10/19 07:54:23 espie Exp $

COMMENT= 	memorable random strings

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	String-Koremutake-0.30
CATEGORIES=	textproc devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

REGRESS_DEPENDS=::devel/p5-Test-Exception

.include <bsd.port.mk>
