# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:53 ajacoutot Exp $

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
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

.include <bsd.port.mk>
