# $OpenBSD: Makefile,v 1.2 2001/01/04 13:17:21 kevlo Exp $

VERSION=	2.76
DISTNAME=	CGI-modules-${VERSION}
PKGNAME=	p5-CGI-${VERSION}
CATEGORIES=	www perl5
NEED_VERSION=	1.348

HOMEPAGE=	http://stein.cshl.org/WWW/software/CGI::modules/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= CGI

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/Bundle/LWP.pm::www/p5-libwww

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
