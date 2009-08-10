# $OpenBSD: Makefile,v 1.6 2009/08/10 16:40:15 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	ruby bindings for RRDtool

V=		0.6.0
DISTNAME=	RubyRRDtool-$V
PKGNAME=	ruby-rrdtool-$Vp2
CATEGORIES=	net

HOMEPAGE=	http://rubyrrdtool.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	art_lgpl_2 c freetype m png z

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rubyrrdtool/}

MODULES=	lang/ruby

GEM_SKIPDEPENDS= hoe
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		rrd:rrdtool->=1.2,<1.3:net/rrdtool

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

pre-configure:
	@perl -pi -e "s#%%LOCALBASE%%#${LOCALBASE}#;" \
		-e "s#%%X11BASE%%#${X11BASE}#" ${WRKSRC}/extconf.rb

.include <bsd.port.mk>
