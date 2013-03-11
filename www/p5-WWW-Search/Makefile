# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:47 espie Exp $

COMMENT=		virtual base class for WWW searches

DISTNAME=		WWW-Search-2.508
CATEGORIES=		www
REVISION=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-File-Slurp \
			devel/p5-Test-File \
			mail/p5-Email-MIME>=1.910 \
			mail/p5-Email-Send \
			math/p5-Bit-Vector \
			misc/p5-User \
			www/p5-HTML-Parser \
			www/p5-HTML-Tree \
			www/p5-URI \
			www/p5-libwww
TEST_DEPENDS=	devel/p5-IO-Capture \
			www/p5-WWW-Search

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
