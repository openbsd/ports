# $OpenBSD: Makefile,v 1.13 2002/05/16 04:43:42 avsm Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.64
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www perl5
NEED_VERSION=	1.526
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

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
