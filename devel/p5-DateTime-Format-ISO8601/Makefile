# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT= 	"DateTime parser for ISO8601 date formats"

MODULES=	cpan 
DISTNAME=	DateTime-Format-ISO8601-0.0403
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-DateTime-Format-Builder 

CONFIGURE_STYLE=modbuild

MAKE_ENV=TEST_POD=Yes

.include <bsd.port.mk>
