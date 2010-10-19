# $OpenBSD: Makefile,v 1.5 2010/10/19 08:02:55 espie Exp $

COMMENT= 	FastMmap storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-FastMmap-0.05
CATEGORIES=	www
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Cache-FastMmap \
		::www/p5-Catalyst-Plugin-Session

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
