# $OpenBSD: Makefile,v 1.5 2007/01/16 17:52:07 simon Exp $

COMMENT=	"generate HTML from files containing POD documentation"

MODULES=	cpan
DISTNAME=	PodToHTML-0.05
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-HTML-Format->=1.23:www/p5-HTML-Format
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::www/p5-URI

.include <bsd.port.mk>
