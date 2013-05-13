# $OpenBSD: Makefile,v 1.8 2013/05/13 06:34:11 jasper Exp $

COMMENT=		simple, blog aware, static site generator

DISTNAME=		jekyll-1.0.2
CATEGORIES=		www

HOMEPAGE=		http://jekyllrb.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-colorator,${MODRUBY_FLAVOR} \
			devel/ruby-commander,${MODRUBY_FLAVOR} \
			devel/ruby-safe_yaml,${MODRUBY_FLAVOR}<0.7.2 \
			sysutils/ruby-directory_watcher,${MODRUBY_FLAVOR}>=1.4.1 \
			textproc/ruby-classifier,${MODRUBY_FLAVOR} \
			textproc/ruby-kramdown,${MODRUBY_FLAVOR}>=1.0.2 \
			textproc/ruby-liquid,${MODRUBY_FLAVOR}>=2.4.1 \
			textproc/ruby-maruku,${MODRUBY_FLAVOR} \
			textproc/ruby-pygments.rb,${MODRUBY_FLAVOR}>=0.5.0v0

.include <bsd.port.mk>
