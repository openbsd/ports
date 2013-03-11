# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:08 espie Exp $

COMMENT=	enhanced ruby mysql driver, supporting async and threading

DISTNAME=	mysqlplus-0.1.2
REVISION =	4
CATEGORIES=	databases

HOMEPAGE=	http://github.com/oldmoe/mysqlplus

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient crypto ssl z

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

# Requires running mysql server
TEST_IS_INTERACTIVE = Yes
TEST_DEPENDS=databases/mysql,-server \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=rake
do-test:
	cd ${WRKSRC} && \
		RUBYLIB=test:$(dirname `gem which mysqlplus`) ${RAKE} test

.include <bsd.port.mk>
