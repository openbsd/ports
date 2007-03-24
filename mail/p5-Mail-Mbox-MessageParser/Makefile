# $OpenBSD: Makefile,v 1.1.1.1 2007/03/24 09:04:48 steven Exp $

COMMENT=	"fast and simple mbox folder reader"

MODULES=	cpan
DISTNAME=	Mail-Mbox-MessageParser-1.5000
CATEGORIES=	mail

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Benchmark-Timer
RUN_DEPENDS=	::devel/p5-FileHandle-Unget \
		::archivers/bzip2

CONFIGURE_ARGS=	BZIP2=${LOCALBASE}/bin/bzip2

.include <bsd.port.mk>
