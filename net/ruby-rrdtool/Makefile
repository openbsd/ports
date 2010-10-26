# $OpenBSD: Makefile,v 1.10 2010/10/26 21:25:08 jeremy Exp $

COMMENT=	ruby bindings for RRDtool

V=		0.6.0
DISTNAME=	RubyRRDtool-$V
PKGNAME=	ruby-rrdtool-$V
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://rubyrrdtool.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	art_lgpl_2 freetype png rrd z

MODULES=	lang/ruby

GEM_SKIPDEPENDS= hoe
LIB_DEPENDS=	:rrdtool->=1.2,<1.3:net/rrdtool

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	@perl -pi -e "s#%%LOCALBASE%%#${LOCALBASE}#;" \
		-e "s#%%X11BASE%%#${X11BASE}#" ${WRKSRC}/extconf.rb

.include <bsd.port.mk>
