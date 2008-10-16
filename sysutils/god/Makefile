# $OpenBSD: Makefile,v 1.2 2008/10/16 19:40:31 jcs Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=god/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-hoe->=1.4.0:devel/ruby-hoe

CONFIGURE_STYLE=ruby gem

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

.include <bsd.port.mk>
