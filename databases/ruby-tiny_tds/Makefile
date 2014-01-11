# $OpenBSD: Makefile,v 1.10 2014/01/11 22:51:02 jeremy Exp $

COMMENT =	simple and fast ruby binding to FreeTDS

DISTNAME =	tiny_tds-0.5.1
REVISION =	1
CATEGORIES =	databases

HOMEPAGE =	https://github.com/rails-sqlserver/tiny_tds

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	sybdb

LIB_DEPENDS =	databases/freetds

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
