# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:15 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		accurately serialize a data structure as Perl code

DISTNAME=		Data-Dump-Streamer-2.09
REVISION=		2
CATEGORIES=		devel

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-B-Utils \
			devel/p5-PadWalker

.include <bsd.port.mk>
