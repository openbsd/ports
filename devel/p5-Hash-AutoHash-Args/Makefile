# $OpenBSD: Makefile,v 1.1.1.1 2010/09/10 13:47:08 jasper Exp $

COMMENT=	OO processing of keyword-based argument lists 

DISTNAME=	Hash-AutoHash-Args-1.12
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Hash-AutoHash
REGRESS_DEPENDS=	::devel/p5-Test-Deep

.include <bsd.port.mk>
