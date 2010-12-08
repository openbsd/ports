# $OpenBSD: Makefile,v 1.27 2010/12/08 21:44:48 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

VERSION=	3.0.3
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
		mail/ruby-mail,${MODRUBY_FLAVOR}>=2.2.9,<2.3

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
