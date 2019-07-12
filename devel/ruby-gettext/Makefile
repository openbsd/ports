# $OpenBSD: Makefile,v 1.22 2019/07/12 20:45:58 sthen Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-3.2.2
CATEGORIES=		devel

# Ruby or LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-locale,${MODRUBY_FLAVOR}>=2.0.5 \
			textproc/ruby-text,${MODRUBY_FLAVOR}>=1.3.0

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST =	rake

.include <bsd.port.mk>
