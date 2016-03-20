# $OpenBSD: Makefile,v 1.11 2016/03/20 16:12:26 naddy Exp $

COMMENT=	syntax highlighter based on pygments

DISTNAME=	pygments.rb-0.6.3
EPOCH=		0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/tmm1/pygments.rb

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby \
		lang/python

MODPY_BUILDDEP=	No

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-yajl,${MODRUBY_FLAVOR}>=1.2.1 \
		sysutils/ruby-posix-spawn,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/pygments/mentos.py

.include <bsd.port.mk>
