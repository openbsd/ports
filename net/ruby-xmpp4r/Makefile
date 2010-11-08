# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	Ruby XMPP/Jabber library

DISTNAME=	xmpp4r-0.4
REVISION=	1
CATEGORIES=	net

MAINTAINER=	joshua stein <jcs@openbsd.org>

HOMEPAGE=	http://home.gna.org/xmpp4r/

# gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
