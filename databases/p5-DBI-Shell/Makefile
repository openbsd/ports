# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:36 sthen Exp $

COMMENT=	interactive command shell for the DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBI-Shell-11.95
REVISION=	1
CATEGORIES=	databases

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		devel/p5-IO-Tee \
		textproc/p5-Text-Reform

.include <bsd.port.mk>
