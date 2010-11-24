# $OpenBSD: Makefile,v 1.26 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.3.4
REVISION =	2
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	devel/ruby-actionpack,${MODRUBY_FLAVOR}>=2.3.4

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
