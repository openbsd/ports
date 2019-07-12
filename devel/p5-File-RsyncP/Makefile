# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:54 sthen Exp $

COMMENT =	perl implementation of an Rsync client

MODULES =	cpan
DISTNAME =	File-RsyncP-0.74
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=	CC='${CC}'

WANTLIB += c m perl

.include <bsd.port.mk>
