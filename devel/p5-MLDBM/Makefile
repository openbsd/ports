# $OpenBSD: Makefile,v 1.18 2011/06/13 16:30:12 jasper Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
DISTNAME=	MLDBM-2.04
CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-FreezeThaw>=0.3
BUILD_DEPENDS=	${RUN_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
