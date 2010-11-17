# $OpenBSD: Makefile,v 1.7 2010/11/17 23:30:49 sthen Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.19
REVISION=	0
CATEGORIES=	devel
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class \
		devel/p5-Class-ISA
REGRESS_DEPENDS= devel/p5-Class-ISA

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
