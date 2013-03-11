# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:17 espie Exp $

COMMENT=	OO processing of keyword-based argument lists

DISTNAME=	Hash-AutoHash-Args-1.12
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Hash-AutoHash
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
