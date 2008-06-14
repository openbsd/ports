# $OpenBSD: Makefile,v 1.14 2008/06/14 23:53:05 landry Exp $

COMMENT=	easy email delivery and testing for ruby

DISTNAME=	actionmailer-2.0.2
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=actionmailer/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-actionpack-2.0.2:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
