# $OpenBSD: Makefile,v 1.4 2010/10/18 16:52:46 espie Exp $

COMMENT=	fetch info from MPEG-4 files

MODULES=	cpan
DISTNAME=	MP4-Info-1.12
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-IO-String

.include <bsd.port.mk>
