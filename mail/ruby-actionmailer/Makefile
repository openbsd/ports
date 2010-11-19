# $OpenBSD: Makefile,v 1.25 2010/11/19 07:23:09 espie Exp $

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
RUN_DEPENDS= 	devel/ruby-actionpack,${FLAVOR}>=2.3.4

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
