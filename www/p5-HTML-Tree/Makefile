# $OpenBSD: Makefile,v 1.9 2002/06/10 03:14:35 wilfried Exp $

COMMENT=	"perl parser that builds an HTML tree"

DISTNAME=	HTML-Tree-3.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

BUILD_DEPENDS=  :p5-HTML-Parser->=2.19:www/p5-HTML-Parser \
		:p5-HTML-Tagset->=3.02:www/p5-HTML-Tagset
RUN_DEPENDS=    ${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
