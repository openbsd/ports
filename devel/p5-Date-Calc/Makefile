# $OpenBSD: Makefile,v 1.15 2006/11/25 16:32:34 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"date calculations for the Gregorian calendar"

MODULES=	cpan
DISTNAME=	Date-Calc-5.4
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Bit-Vector->=6.2:math/p5-Bit-Vector \
		:p5-Carp-Clan->=5.3:devel/p5-Carp-Clan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
