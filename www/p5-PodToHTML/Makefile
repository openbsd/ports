# $OpenBSD: Makefile,v 1.7 2008/07/26 03:29:38 kevlo Exp $

COMMENT=	generate HTML from files containing POD documentation

MODULES=	cpan
DISTNAME=	PodToHTML-0.07
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-HTML-Format->=1.23:www/p5-HTML-Format \
		:p5-URI->=1.37:www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
