# $OpenBSD: Makefile,v 1.5 2002/03/21 21:25:54 espie Exp $

COMMENT=	"modules for use in writing cgi scripts"

VERSION=	2.76
DISTNAME=	CGI-modules-${VERSION}
PKGNAME=	p5-CGI-${VERSION}
CATEGORIES=	www perl5
NEED_VERSION=	1.515

HOMEPAGE=	http://stein.cshl.org/WWW/software/CGI::modules/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= CGI

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::www/p5-libwww

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
