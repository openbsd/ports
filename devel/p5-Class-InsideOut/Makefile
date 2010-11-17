# $OpenBSD: Makefile,v 1.6 2010/11/17 23:30:49 sthen Exp $

COMMENT= 	alternative object layout in perl

MODULES=	cpan

DISTNAME=	Class-InsideOut-1.09
REVISION=	0

CATEGORIES=	devel
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-Class-ISA
REGRESS_DEPENDS= ${RUN_DEPENDS}

.include <bsd.port.mk>
