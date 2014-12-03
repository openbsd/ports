# $OpenBSD: Makefile,v 1.8 2014/12/03 21:02:54 bluhm Exp $

COMMENT =		validate recursive perl hash structures

DISTNAME =		Data-Validate-Struct-0.09

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		textproc/p5-Regexp-Common \
			devel/p5-Data-Validate>=0.06 \
			devel/p5-Data-Validate-IP>=0.18

.include <bsd.port.mk>
