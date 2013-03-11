# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:46 espie Exp $

COMMENT=	Tag Cloud for RT with searchable custom fields

MODULES=	cpan
DISTNAME=	RTx-Tags-0.10
REVISION=	2
CATEGORIES=	www
USE_GROFF =	Yes

EXTRACT_SUFX=	.tgz

CONFIGURE_ENV=	RTHOME=${LOCALBASE}/${P5SITE}
BUILD_DEPENDS+=	www/rt
RUN_DEPENDS+=	www/rt

# Perl
PERMIT_PACKAGE_CDROM=  Yes

.include <bsd.port.mk>
