# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.19
REVISION=	1
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
