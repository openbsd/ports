# $OpenBSD: Makefile,v 1.4 2011/09/16 08:48:05 espie Exp $

COMMENT =	simple and fast ruby binding to FreeTDS

DISTNAME =	tiny_tds-0.4.5
CATEGORIES =	databases
REVISION =	0

HOMEPAGE =	https://github.com/rails-sqlserver/tiny_tds

MAINTAINER  =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

WANTLIB =	sybdb

LIB_DEPENDS =	databases/freetds

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
