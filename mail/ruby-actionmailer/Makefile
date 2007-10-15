# $OpenBSD: Makefile,v 1.11 2007/10/15 15:30:08 jcs Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-1.3.5
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
RUN_DEPENDS= 	:ruby-actionpack->=1.13.5:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
