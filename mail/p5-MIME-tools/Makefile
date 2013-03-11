# $OpenBSD: Makefile,v 1.31 2013/03/11 11:23:52 espie Exp $

COMMENT=		modules for parsing (and creating) MIME entities

DISTNAME=		MIME-tools-5.503
CATEGORIES=		mail

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>


# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-IO-stringy>=1.211 \
			mail/p5-Mail-Tools  \
			converters/p5-Convert-BinHex

BUILD_DEPENDS=		${RUN_DEPENDS}
MAKE_ENV=		TEST_POD=1
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
