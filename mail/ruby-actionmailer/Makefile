# $OpenBSD: Makefile,v 1.16 2008/09/26 14:46:44 jcs Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.1.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=actionmailer/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-actionpack->=2.1.1:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
