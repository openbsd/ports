# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:15 sthen Exp $

COMMENT=	syntax highlighter based on pygments

DISTNAME=	pygments.rb-0.6.3
REVISION=	1
EPOCH=		0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/tmm1/pygments.rb

# GPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby \
		lang/python

MODPY_BUILDDEP=	No

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-yajl,${MODRUBY_FLAVOR}>=1.2.0,<2.0 \
		sysutils/ruby-posix-spawn,${MODRUBY_FLAVOR}>=0.3.6,<0.4

CONFIGURE_STYLE=ruby gem

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/pygments/mentos.py

.include <bsd.port.mk>
