# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:10 naddy Exp $

COMMENT=	interactive command shell for the DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBI-Shell-11.95
REVISION=	0
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		devel/p5-IO-Tee \
		textproc/p5-Text-Reform

.include <bsd.port.mk>
