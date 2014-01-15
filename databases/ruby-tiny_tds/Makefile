# $OpenBSD: Makefile,v 1.11 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	simple and fast ruby binding to FreeTDS

DISTNAME =	tiny_tds-0.5.1
REVISION =	2
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
