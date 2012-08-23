# $OpenBSD: Makefile,v 1.6 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		accurately serialize a data structure as Perl code

DISTNAME=		Data-Dump-Streamer-2.09
REVISION=		2
CATEGORIES=		devel

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-B-Utils \
			devel/p5-PadWalker

.include <bsd.port.mk>
