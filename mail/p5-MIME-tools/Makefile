# $OpenBSD: Makefile,v 1.23 2008/04/16 17:57:20 jasper Exp $

COMMENT=		modules for parsing (and creating) MIME entities

DISTNAME=		MIME-tools-5.426
CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://www.zeegee.com/code/perl/MIME-tools/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-IO-stringy->=1.211:devel/p5-IO-stringy \
			:p5-Mail-Tools-*:mail/p5-Mail-Tools  \
			:p5-Convert-BinHex-*:converters/p5-Convert-BinHex

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
