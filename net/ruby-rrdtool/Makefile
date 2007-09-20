# $OpenBSD: Makefile,v 1.2 2007/09/20 11:26:53 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	ruby bindings for RRDtool

V=		0.6.0
DISTNAME=	RubyRRDtool-$V
PKGNAME=	ruby-rrdtool-$V
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

BUILD_DEPENDS=	::devel/ruby-hoe
LIB_DEPENDS=	ruby::lang/ruby \
		rrd:rrdtool-1.2.*:net/rrdtool

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

pre-configure:
	@perl -pi -e "s#%%LOCALBASE%%#${LOCALBASE}#;" \
		-e "s#%%X11BASE%%#${X11BASE}#" ${WRKSRC}/extconf.rb

.include <bsd.port.mk>
