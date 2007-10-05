# $OpenBSD: Makefile,v 1.1.1.1 2007/10/05 20:57:15 simon Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
DISTNAME=	LWP-Authen-Wsse-0.05
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-SHA1 \
		::www/p5-libwww

.include <bsd.port.mk>
