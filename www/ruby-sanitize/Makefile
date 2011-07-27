# $OpenBSD: Makefile,v 1.2 2011/07/27 18:21:54 jeremy Exp $

COMMENT=		whitelist-based HTML sanitizer

DISTNAME=		sanitize-2.0.3
CATEGORIES=		www textproc

HOMEPAGE=		https://github.com/rgrove/sanitize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=            textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.4.4,<1.6

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
