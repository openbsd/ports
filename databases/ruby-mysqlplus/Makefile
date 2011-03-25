# $OpenBSD: Makefile,v 1.4 2011/03/25 16:39:54 jeremy Exp $

COMMENT=	enhanced ruby mysql driver, supporting async and threading

DISTNAME=	mysqlplus-0.1.2
REVISION =	0
CATEGORIES=	databases

HOMEPAGE=	http://github.com/oldmoe/mysqlplus

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

# Requires running mysql server
REGRESS_IS_INTERACTIVE = Yes
REGRESS_DEPENDS=databases/mysql,-server \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS=rake
do-regress:
	cd ${WRKSRC} && \
		RUBYLIB=test:$(dirname `gem which mysqlplus`) ${RAKE} test

.include <bsd.port.mk>
