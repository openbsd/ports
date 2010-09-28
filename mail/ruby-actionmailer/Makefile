# $OpenBSD: Makefile,v 1.23 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.3.4
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-actionpack->=2.3.4:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
