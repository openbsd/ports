# $OpenBSD: Makefile,v 1.18 2002/10/30 04:46:32 pvalchev Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.65
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

BUILD_DEPENDS=  :p5-URI->1.10:www/p5-URI \
		:p5-HTML-Parser->=2.20:www/p5-HTML-Parser \
		:p5-Crypt-SSLeay-*:security/p5-Crypt-SSLeay \
		:p5-HTTP-GHTTP-*:www/p5-HTTP-GHTTP
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
