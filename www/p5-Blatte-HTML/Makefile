# $OpenBSD: Makefile,v 1.9 2002/07/05 08:44:59 jcs Exp $

COMMENT=	"Blatte functions to generate (X)HTML"

DISTNAME=	Blatte-HTML-0.9
PKGNAME=	p5-${DISTNAME}
HOMEPAGE=	http://www.blatte.org/

CATEGORIES=	www perl5
NEED_VERSION=	1.515

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../by-authors/id/B/BO/BOBG/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Blatte-*:textproc/p5-Blatte \
		:p5-HTML-Parser-*:www/p5-HTML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
