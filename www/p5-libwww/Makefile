# $OpenBSD: Makefile,v 1.16 2002/07/10 20:48:16 avsm Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.65
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www perl5
NEED_VERSION=	1.526
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

BUILD_DEPENDS=  :p5-URI->1.10:www/p5-URI \
		:p5-HTML-Parser->=2.20:www/p5-HTML-Parser \
		:p5-libnet-*:net/p5-libnet \
		:p5-Digest-MD5-*:security/p5-Digest-MD5 \
		:p5-Crypt-SSLeay-*:security/p5-Crypt-SSLeay \
		:p5-HTTP-GHTTP-*:www/p5-HTTP-GHTTP
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
