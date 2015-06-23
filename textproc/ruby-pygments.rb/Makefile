# $OpenBSD: Makefile,v 1.10 2015/06/23 07:46:25 jasper Exp $

COMMENT=	syntax highlighter based on pygments

DISTNAME=	pygments.rb-0.6.3
EPOCH=		0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/tmm1/pygments.rb

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# order matters, as otherwise ruby.port.mk complains about SHARED_ONLY=yes
# which is set by python.port.mk, and not having 'ext' in CONFIGURE_STYLE.
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
