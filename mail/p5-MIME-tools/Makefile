# $OpenBSD: Makefile,v 1.29 2010/11/19 07:23:08 espie Exp $

COMMENT=		modules for parsing (and creating) MIME entities

DISTNAME=		MIME-tools-5.428
CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://www.zeegee.com/code/perl/MIME-tools/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-IO-stringy>=1.211 \
			mail/p5-Mail-Tools  \
			converters/p5-Convert-BinHex

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
