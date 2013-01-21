# $OpenBSD: Makefile,v 1.4 2013/01/21 18:21:22 jasper Exp $

COMMENT=		simple, blog aware, static site generator

DISTNAME=		jekyll-0.12.0
CATEGORIES=		www

HOMEPAGE=		http://jekyllrb.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
