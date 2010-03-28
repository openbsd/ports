# $OpenBSD: Makefile,v 1.1.1.1 2010/03/28 19:28:50 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		accurately serialize a data structure as Perl code

DISTNAME=		Data-Dump-Streamer-2.09
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-B-Utils \
			::devel/p5-PadWalker

.include <bsd.port.mk>
