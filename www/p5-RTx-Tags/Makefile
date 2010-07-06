# $OpenBSD: Makefile,v 1.4 2010/07/06 15:17:33 espie Exp $

COMMENT=	Tag Cloud for RT with searchable custom fields

MODULES=	cpan
DISTNAME=	RTx-Tags-0.10
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

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
