# $OpenBSD: Makefile,v 1.11 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	ruby bindings for RRDtool

V=		0.6.0
DISTNAME=	RubyRRDtool-$V
PKGNAME=	rrdtool-$V
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://rubyrrdtool.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	art_lgpl_2 freetype png rrd z

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}
LIB_DEPENDS=	:rrdtool->=1.2,<1.3:net/rrdtool

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	@perl -pi -e "s#%%LOCALBASE%%#${LOCALBASE}#;" \
		-e "s#%%X11BASE%%#${X11BASE}#" ${WRKSRC}/extconf.rb

.include <bsd.port.mk>
