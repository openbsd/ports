# $OpenBSD: Makefile,v 1.3 2002/05/13 18:50:37 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.0.2
PKGNAME=	xmms-flac-${VERSION}
DISTNAME=	flac-${VERSION}-src
CATEGORIES=	audio
NEED_VERSION=	1.504
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flac/}

LIB_DEPENDS=	xmms.2::audio/xmms \
		FLAC.2::audio/flac

WRKDIST=	${WRKDIR}/flac-${VERSION}
WRKSRC=		${WRKDIST}/src/plugin_xmms

CONFIGURE_STYLE=		gnu automake
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}

post-patch:
	cd ${WRKDIST}; automake -i

pre-configure:
	@echo '#!/bin/sh' >${WRKSRC}/configure
	@echo 'cd ../..; exec ./configure "$$@"' >>${WRKSRC}/configure
	@chmod a+x ${WRKSRC}/configure

.include <bsd.port.mk>
