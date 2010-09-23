# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:28 jeremy Exp $

COMMENT=	SNMP network management library for Ruby

DISTNAME=	snmp-1.0.2
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
CATEGORIES=	net

# bsd/ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=snmplib/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
