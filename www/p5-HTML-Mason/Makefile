# $OpenBSD: Makefile,v 1.12 2002/10/16 13:18:19 wilfried Exp $

COMMENT=	"high-performance dynamic web authoring system"

DISTNAME=	HTML-Mason-1.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

BUILD_DEPENDS=	:p5-Params-Validate->=0.24:devel/p5-Params-Validate \
		:mod_perl-*:www/mod_perl \
		:p5-libapreq->=1.0:www/p5-libapreq \
		:p5-Exception-Class->=1.05:devel/p5-Exception-Class \
		:p5-Class-Container->=0.07:devel/p5-Class-Container \
		:p5-Cache-Cache->=1.01:devel/p5-Cache-Cache
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	--no-prompts

.include <bsd.port.mk>
