# $OpenBSD: Makefile,v 1.4 2009/11/10 16:56:47 giovanni Exp $

COMMENT=	fast and simple mbox folder reader

MODULES=	cpan
DISTNAME=	Mail-Mbox-MessageParser-1.5002
CATEGORIES=	mail

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Benchmark-Timer \
		::devel/p5-FileHandle-Unget
RUN_DEPENDS=	::devel/p5-FileHandle-Unget \
		::archivers/bzip2

REGRESS_DEPENDS=::textproc/p5-Text-Diff

CONFIGURE_ARGS=	BZIP2=${LOCALBASE}/bin/bzip2

.include <bsd.port.mk>
