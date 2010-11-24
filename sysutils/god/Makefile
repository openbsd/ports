# $OpenBSD: Makefile,v 1.9 2010/11/24 21:35:15 jeremy Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.3
FULLPKGNAME=	${DISTNAME}
REVISION =	5
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-hoe>=1.4.0

CONFIGURE_STYLE=ruby gem ext

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

.include <bsd.port.mk>
