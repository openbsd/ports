# $OpenBSD: Makefile,v 1.1.1.1 2011/06/27 06:45:04 jasper Exp $

COMMENT=		whitelist-based HTML sanitizer

DISTNAME=		sanitize-2.0.2
CATEGORIES=		www textproc

HOMEPAGE=		https://github.com/rgrove/sanitize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=            textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
