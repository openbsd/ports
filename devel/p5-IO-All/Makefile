# $OpenBSD: Makefile,v 1.9 2011/05/13 00:04:52 gsoares Exp $

COMMENT= 	universal I/O to everything

MODULES=	cpan 
DISTNAME=	IO-All-0.41
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-IO-String

REGRESS_DEPENDS=devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
