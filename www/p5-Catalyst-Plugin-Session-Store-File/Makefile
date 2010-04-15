# $OpenBSD: Makefile,v 1.7 2010/04/15 14:29:17 ajacoutot Exp $

COMMENT= 	catalyst file storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Cache-Cache \
		::www/p5-Catalyst-Plugin-Session
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
