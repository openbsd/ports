# $OpenBSD: Makefile,v 1.6 2013/04/08 22:23:41 jasper Exp $

COMMENT=		simple, blog aware, static site generator

DISTNAME=		jekyll-0.12.1
CATEGORIES=		www

HOMEPAGE=		http://jekyllrb.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		sysutils/ruby-directory_watcher,${MODRUBY_FLAVOR} \
			textproc/ruby-classifier,${MODRUBY_FLAVOR} \
			textproc/ruby-kramdown,${MODRUBY_FLAVOR}>=0.14.2,<0.15 \
			textproc/ruby-liquid,${MODRUBY_FLAVOR}>=2.4.1 \
			textproc/ruby-maruku,${MODRUBY_FLAVOR} \
			textproc/ruby-pygments.rb,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
