# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:58 sthen Exp $

COMMENT=		virtual base class for WWW searches

DISTNAME=		WWW-Search-2.518
CATEGORIES=		www

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-File-Slurp \
			math/p5-Bit-Vector \
			misc/p5-User \
			www/p5-CGI \
			www/p5-HTML-Parser>=2.23 \
			www/p5-HTML-Tree \
			www/p5-URI \
			www/p5-libwww>=2

# Optional dependencies, kept to not break users' setup
RUN_DEPENDS+=		mail/p5-Email-MIME>=1.910 \
			mail/p5-Email-Send

# The module needs itself to perform all its tests
TEST_DEPENDS=		devel/p5-IO-Capture \
			devel/p5-Test-File \
			www/p5-WWW-Search

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
