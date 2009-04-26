# $OpenBSD: Makefile,v 1.2 2009/04/26 18:21:26 robert Exp $

COMMENT=	Tag Cloud for RT with searchable custom fields

MODULES=	cpan
DISTNAME=	RTx-Tags-0.10
PKGNAME=	p5-${DISTNAME}p0
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
