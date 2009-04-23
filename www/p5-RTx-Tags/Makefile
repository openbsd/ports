# $OpenBSD: Makefile,v 1.1.1.1 2009/04/23 16:01:49 robert Exp $

COMMENT=	Tag Cloud support for RT with simple-searchable custom fields

MODULES=	cpan
DISTNAME=	RTx-Tags-0.10
CATEGORIES=	www

EXTRACT_SUFX=	.tgz

CONFIGURE_ENV=	RTHOME=${LOCALBASE}/${P5SITE}
LIB_DEPENDS=	::www/rt

# Perl
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

.include <bsd.port.mk>
