# $OpenBSD: Makefile,v 1.11 2022/03/07 11:59:02 sthen Exp $

COMMENT =	perl implementation of an Rsync client

MODULES =	cpan
DISTNAME =	File-RsyncP-0.76
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=	CC='${CC}'

WANTLIB += c m perl

.include <bsd.port.mk>
