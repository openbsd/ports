# $OpenBSD: Makefile,v 1.30 2011/12/13 17:53:44 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

VERSION=	3.1.3
DISTNAME=	actionmailer-${VERSION}
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	devel/ruby-actionpack,${MODRUBY_FLAVOR}=${VERSION} \
		mail/ruby-mail,${MODRUBY_FLAVOR}>=2.3.0,<2.4

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
