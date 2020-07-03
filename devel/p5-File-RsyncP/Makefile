# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:53 sthen Exp $

COMMENT =	perl implementation of an Rsync client

MODULES =	cpan
DISTNAME =	File-RsyncP-0.74
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=	CC='${CC}'

WANTLIB += c m perl

.include <bsd.port.mk>
