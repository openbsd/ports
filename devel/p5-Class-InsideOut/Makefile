# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT= 	alternative object layout in perl

MODULES=	cpan

DISTNAME=	Class-InsideOut-1.09
REVISION=	1

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
