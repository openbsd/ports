COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-3.4.7
CATEGORIES=		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Ruby or LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-locale,${MODRUBY_FLAVOR}>=2.0.5 \
			textproc/ruby-erubi,${MODRUBY_FLAVOR} \
			textproc/ruby-text,${MODRUBY_FLAVOR}>=1.3.0

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
