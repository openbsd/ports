# $OpenBSD: Makefile,v 1.9 2014/10/28 19:17:38 jasper Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	mail-2.6.1
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<3.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
