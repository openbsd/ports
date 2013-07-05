# $OpenBSD: Makefile,v 1.6 2013/07/05 08:43:18 bluhm Exp $

COMMENT =		validate recursive perl hash structures

DISTNAME =		Data-Validate-Struct-0.07

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-Regexp-Common \
			devel/p5-Data-Validate>=0.06 \
			devel/p5-Data-Validate-IP>=0.18

.include <bsd.port.mk>
