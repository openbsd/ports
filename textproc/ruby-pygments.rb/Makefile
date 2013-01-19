# $OpenBSD: Makefile,v 1.1.1.1 2013/01/19 05:11:27 jasper Exp $

COMMENT=	syntax highlighter based on pygments

DISTNAME=	pygments.rb-0.3.7

CATEGORIES=	textproc

HOMEPAGE=	http://github.com/tmm1/pygments.rb

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# order matters, as otherwise ruby.port.mk complains about SHARED_ONLY=yes
# which is set by python.port.mk, and not having 'ext' in CONFIGURE_STYLE.
MODULES=	lang/ruby \
		lang/python

MODPY_BUILD_DEP=No

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-yajl,${MODRUBY_FLAVOR} \
		sysutils/ruby-posix-spawn,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/pygments/mentos.py

.include <bsd.port.mk>
