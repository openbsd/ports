# $OpenBSD: Makefile,v 1.10 2001/11/10 15:00:52 espie Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.53
PKGNAME=	p5-libwww-5.53
CATEGORIES=	www perl5
NEED_VERSION=	1.489
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= LWP

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ::www/p5-URI \
		::www/p5-HTML-Parser \
		::net/p5-libnet \
		::security/p5-Digest-MD5 \
		::security/p5-Crypt-SSLeay \
		::www/p5-HTTP-GHTTP
RUN_DEPENDS=    ${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
