# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	ruby extension for working with PDF documents

DISTNAME=	pdf-writer-1.1.8
REVISION =      1
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-transaction-simple-1.4.0:devel/ruby-transaction-simple,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-color-1.4.0:graphics/ruby-color,${FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
