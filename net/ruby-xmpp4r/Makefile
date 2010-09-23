# $OpenBSD: Makefile,v 1.6 2010/09/23 22:30:28 jeremy Exp $

COMMENT=	Ruby XMPP/Jabber library

DISTNAME=	xmpp4r-0.4
PKGNAME=	ruby-${DISTNAME}
REVISION=	0
CATEGORIES=	net

MAINTAINER=	joshua stein <jcs@openbsd.org>

HOMEPAGE=	http://home.gna.org/xmpp4r/

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=xmpp4r/}

# gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
