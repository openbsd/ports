# $OpenBSD: Makefile,v 1.1.1.1 2003/04/15 15:49:08 espie Exp $
COMMENT=		"cd2ogg with vorbisgain support"
DISTNAME=		vlorb-1.0
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

MAINTAINER=		Han Boetes <han@linux-mandrake.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		:cdparanoia-*:audio/cdparanoia \
			:vorbis-tools-*:audio/vorbis-tools \
			:vorbisgain-*:audio/vorbisgain \
			:p5-CDDB-*:audio/p5-cddb

FAKE_FLAGS=		mandir=${DESTDIR}${TRUEPREFIX}/man
NO_REGRESS=		Yes

.include <bsd.port.mk>
