# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:07 sthen Exp $

COMMENT=	utility functions for checking references (XS version)

MODULES=	cpan
DISTNAME=	Ref-Util-XS-0.117
CATEGORIES=	devel
REVISION=	0

MAINTAINER=	Wen Heping <wenheping2000@hotmail.com>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	c perl

TEST_DEPENDS +=	devel/p5-Readonly

.include <bsd.port.mk>
