# $OpenBSD: Makefile,v 1.3 2006/05/25 20:42:56 grunk Exp $
# Original from: Andy Lester <andy@petdance.com>

COMMENT=		"check for HTML errors in a string or file"

DISTNAME=		HTML-Lint-2.02
PKGNAME=		p5-${DISTNAME}p1
CATEGORIES=		www perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser
REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
