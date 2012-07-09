# $OpenBSD: Makefile,v 1.30 2012/07/09 13:16:22 giovanni Exp $

COMMENT=		modules for parsing (and creating) MIME entities

DISTNAME=		MIME-tools-5.503
CATEGORIES=		mail

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>


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
MAKE_ENV=		TEST_POD=1
REGRESS_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
