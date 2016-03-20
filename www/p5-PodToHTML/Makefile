# $OpenBSD: Makefile,v 1.15 2016/03/20 19:57:21 naddy Exp $

COMMENT=	generate HTML from files containing POD documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PodToHTML-0.08
REVISION=	1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Format>=1.23 \
		www/p5-URI>=1.37
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
