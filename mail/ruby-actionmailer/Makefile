# $OpenBSD: Makefile,v 1.19 2009/04/04 10:18:42 bernd Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.3.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=actionmailer/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-actionpack->=2.3.2:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

.include <bsd.port.mk>
