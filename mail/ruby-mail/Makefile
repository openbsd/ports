# $OpenBSD: Makefile,v 1.8 2013/10/26 23:55:36 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.3.0
REVISION =	1
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.4.0 \
		textproc/ruby-treetop,${MODRUBY_FLAVOR}>=1.4.8,<1.5 \
		mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<2.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
