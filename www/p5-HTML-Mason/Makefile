# $OpenBSD: Makefile,v 1.16 2006/05/01 21:09:18 espie Exp $

COMMENT=	"high-performance dynamic web authoring system"

DISTNAME=	HTML-Mason-1.32
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.74:devel/p5-Params-Validate \
		:mod_perl->=1.27:www/mod_perl \
		:p5-libapreq->=1.1:www/p5-libapreq \
		:p5-Exception-Class->=1.19:devel/p5-Exception-Class \
		:p5-Class-Container->=0.10:devel/p5-Class-Container \
		:p5-Cache-Cache->=1.02:devel/p5-Cache-Cache

CONFIGURE_STYLE=	perl modbuild
CONFIGURE_ARGS+=	--no-prompts

.include <bsd.port.mk>
