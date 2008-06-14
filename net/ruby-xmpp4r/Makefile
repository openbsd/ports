# $OpenBSD: Makefile,v 1.4 2008/06/14 23:54:16 landry Exp $

COMMENT=	Ruby XMPP/Jabber library

DISTNAME=	xmpp4r-0.3.2
PKGNAME=	ruby-${DISTNAME}p0
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

.include <bsd.port.mk>
