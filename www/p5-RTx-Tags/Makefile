# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:56 espie Exp $

COMMENT=	Tag Cloud for RT with searchable custom fields

MODULES=	cpan
DISTNAME=	RTx-Tags-0.10
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

EXTRACT_SUFX=	.tgz

CONFIGURE_ENV=	RTHOME=${LOCALBASE}/${P5SITE}
BUILD_DEPENDS+=	::www/rt
RUN_DEPENDS+=	::www/rt

# Perl
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

.include <bsd.port.mk>
