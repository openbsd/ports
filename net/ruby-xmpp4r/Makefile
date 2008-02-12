# $OpenBSD: Makefile,v 1.3 2008/02/12 03:06:45 jcs Exp $

COMMENT=	Ruby XMPP/Jabber library

DISTNAME=	xmpp4r-0.3.2
PKGNAME=	ruby-${DISTNAME}
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
