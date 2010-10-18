# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:58 espie Exp $

COMMENT =		validate recursive perl hash structures

DISTNAME =		Data-Validate-Struct-0.06

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =	Yes
RUN_DEPENDS =		::textproc/p5-Regexp-Common \
			::devel/p5-Data-Validate

.include <bsd.port.mk>
