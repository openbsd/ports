# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:54 espie Exp $

COMMENT=	UUID for session ID generation

MODULES=	cpan
DISTNAME=	Apache-Session-Generate-UUID-0.2
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-Data-UUID \
		::www/p5-Apache-Session
REGRESS_DEPENDS=::devel/p5-Test-Deep \
		::devel/p5-Test-Exception \
		::devel/p5-Test-Group

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
