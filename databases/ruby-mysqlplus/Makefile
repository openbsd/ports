# $OpenBSD: Makefile,v 1.10 2013/05/25 00:33:09 brad Exp $

COMMENT=	enhanced Ruby MySQL driver, supporting async and threading

DISTNAME=	mysqlplus-0.1.2
REVISION=	6
CATEGORIES=	databases

HOMEPAGE=	http://github.com/oldmoe/mysqlplus

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient crypto ssl z

LIB_DEPENDS=	databases/mariadb

CONFIGURE_STYLE=ruby gem ext

# Requires running mysql server
TEST_IS_INTERACTIVE = Yes
TEST_DEPENDS=databases/mariadb,-server \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=rake
do-test:
	cd ${WRKSRC} && \
		RUBYLIB=test:$(dirname `gem which mysqlplus`) ${RAKE} test

.include <bsd.port.mk>
