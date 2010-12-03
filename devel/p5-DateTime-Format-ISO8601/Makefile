# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT= 	DateTime parser for ISO8601 date formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-ISO8601-0.06
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-DateTime-Format-Builder 

CONFIGURE_STYLE=modbuild

MAKE_ENV=TEST_POD=Yes

.include <bsd.port.mk>
