# $OpenBSD: Makefile,v 1.18 2013/03/11 11:35:56 espie Exp $

COMMENT=	ruby bindings for RRDtool

V=		0.6.0
DISTNAME=	RubyRRDtool-$V
PKGNAME=	rrdtool-$V
REVISION=	10
CATEGORIES=	net

HOMEPAGE=	http://rubyrrdtool.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	art_lgpl_2 freetype png rrd z

FLAVORS=	ruby18
FLAVOR=		ruby18

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-hoe,${MODRUBY_FLAVOR}
LIB_DEPENDS=	rrdtool->=1.2,<1.3:net/rrdtool

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	@perl -pi -e "s#%%LOCALBASE%%#${LOCALBASE}#;" \
		-e "s#%%X11BASE%%#${X11BASE}#" ${WRKSRC}/extconf.rb

.include <bsd.port.mk>
