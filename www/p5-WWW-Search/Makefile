# $OpenBSD: Makefile,v 1.1.1.1 2009/03/04 20:30:50 jasper Exp $

COMMENT=		virtual base class for WWW searches

DISTNAME=		WWW-Search-2.507
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::converters/p5-DateManip \
			::devel/p5-File-Slurp \
			::devel/p5-Test-File \
			::mail/p5-Email-MIME-Creator \
			::mail/p5-Email-Send \
			::math/p5-Bit-Vector \
			::misc/p5-User \
			::www/p5-HTML-Parser \
			::www/p5-HTML-Tree \
			::www/p5-URI \
			::www/p5-libwww
REGRESS_DEPENDS=	::devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
