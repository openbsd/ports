# $OpenBSD: Makefile,v 1.19 2009/04/04 10:18:42 bernd Exp $

COMMENT=	eases web-request routing, handling, and response

DISTNAME=	actionpack-2.3.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=actionpack/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activesupport->=2.3.2:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

.include <bsd.port.mk>
