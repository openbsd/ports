# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:52 simon Exp $

COMMENT= 	"catalyst file storage backend for session data"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.10
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

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
