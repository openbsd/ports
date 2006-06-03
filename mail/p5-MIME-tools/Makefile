# $OpenBSD: Makefile,v 1.18 2006/06/03 07:04:14 steven Exp $

COMMENT=		"modules for parsing (and creating) MIME entities"

DISTNAME=		MIME-tools-5.420
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=		http://www.zeegee.com/code/perl/MIME-tools/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=MIME/}

RUN_DEPENDS=		:p5-IO-stringy->=1.211:devel/p5-IO-stringy \
			:p5-Mail-Tools-*:mail/p5-Mail-Tools  \
			:p5-Convert-BinHex-*:converters/p5-Convert-BinHex \
			:p5-MIME-Base64->=3.03:converters/p5-MIME-Base64
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE= 	perl

PKG_ARCH= *

.include <bsd.port.mk>
