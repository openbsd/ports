# $OpenBSD: Makefile,v 1.12 2021/08/02 21:55:54 kmos Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.7.1
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	mail/ruby-mini_mime,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
