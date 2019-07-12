# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:37 sthen Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.6.4
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<4.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
