# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:21:08 jeremy Exp $

COMMENT=		simple, blog aware, static site generator

DISTNAME=		jekyll-0.8.0
CATEGORIES=		www

HOMEPAGE=		http://jekyllrb.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/ruby-classifier,${MODRUBY_FLAVOR} \
			textproc/ruby-liquid,${MODRUBY_FLAVOR} \
			textproc/ruby-maruku,${MODRUBY_FLAVOR} \
			sysutils/ruby-directory_watcher,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
