# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:58 espie Exp $

COMMENT=	Mayan Long Count calendar

DISTNAME=	DateTime-Calendar-Mayan-0.0601

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	:p5-DateTime->=0.5000:devel/p5-DateTime

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
