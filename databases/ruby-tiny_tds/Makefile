# $OpenBSD: Makefile,v 1.15 2016/11/04 21:31:10 jeremy Exp $

COMMENT =	simple and fast ruby binding to FreeTDS

DISTNAME =	tiny_tds-1.0.5
CATEGORIES =	databases

HOMEPAGE =	https://github.com/rails-sqlserver/tiny_tds

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	sybdb ct

LIB_DEPENDS =	databases/freetds

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
