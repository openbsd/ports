# $OpenBSD: Makefile,v 1.9 2010/10/19 08:02:56 espie Exp $

COMMENT=	generate HTML from files containing POD documentation

MODULES=	cpan
DISTNAME=	PodToHTML-0.08
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}
USE_GROFF =	Yes

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
