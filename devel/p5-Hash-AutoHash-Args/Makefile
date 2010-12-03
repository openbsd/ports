# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT=	OO processing of keyword-based argument lists 

DISTNAME=	Hash-AutoHash-Args-1.12
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Hash-AutoHash
REGRESS_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
