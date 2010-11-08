# $OpenBSD: Makefile,v 1.24 2010/11/08 23:28:54 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.3.4
REVISION =      1
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:${MODRUBY_PKG_PREFIX}-actionpack->=2.3.4:devel/ruby-actionpack,${FLAVOR}

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
