# $OpenBSD: Makefile,v 1.3 2007/09/16 00:17:06 merdely Exp $

COMMENT=	fast and simple mbox folder reader

MODULES=	cpan
DISTNAME=	Mail-Mbox-MessageParser-1.5000
CATEGORIES=	mail

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Benchmark-Timer \
		::devel/p5-FileHandle-Unget
RUN_DEPENDS=	::devel/p5-FileHandle-Unget \
		::archivers/bzip2

CONFIGURE_ARGS=	BZIP2=${LOCALBASE}/bin/bzip2

.include <bsd.port.mk>
