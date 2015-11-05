# $OpenBSD: Makefile,v 1.16 2015/11/05 19:09:00 jca Exp $

COMMENT=	catalyst file storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.18
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
