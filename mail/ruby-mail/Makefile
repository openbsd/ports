# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:24 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.2.10
REVISION =	0
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.4.1,<0.5 \
		textproc/ruby-treetop,${MODRUBY_FLAVOR}>=1.4.8,<1.5 \
		mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<2.0 \
		devel/ruby-activesupport,${MODRUBY_FLAVOR}>=2.3.6

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
