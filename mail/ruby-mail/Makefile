# $OpenBSD: Makefile,v 1.10 2016/11/02 17:04:24 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.6.4
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<4.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
