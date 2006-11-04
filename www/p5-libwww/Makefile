# $OpenBSD: Makefile,v 1.23 2006/11/04 12:00:03 espie Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.805
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

RUN_DEPENDS=	:p5-Compress-Zlib->=1.10:archivers/p5-Compress-Zlib \
		:p5-URI->1.10:www/p5-URI \
		:p5-HTML-Parser->=3.33:www/p5-HTML-Parser \
		:p5-Crypt-SSLeay-*:security/p5-Crypt-SSLeay \
		:p5-HTTP-GHTTP-*:www/p5-HTTP-GHTTP
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
