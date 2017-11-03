# $OpenBSD: Makefile,v 1.8 2017/11/03 11:45:17 espie Exp $

COMMENT =	perl implementation of an Rsync client

MODULES =	cpan
DISTNAME =	File-RsyncP-0.74
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=	CC='${CC}'

WANTLIB += c m perl

.include <bsd.port.mk>
