# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:52 ajacoutot Exp $

COMMENT= 	Catalyst views using Mason components

MODULES=	cpan
DISTNAME=	Catalyst-View-Mason-0.08
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Mason

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
