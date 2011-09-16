# $OpenBSD: Makefile,v 1.12 2011/09/16 11:41:42 espie Exp $

COMMENT=	ruby extension for working with PDF documents

DISTNAME=	pdf-writer-1.1.8
REVISION =	4
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	STEM-1.4.0:devel/ruby-transaction-simple,${MODRUBY_FLAVOR} \
		STEM-1.4.0:graphics/ruby-color,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
