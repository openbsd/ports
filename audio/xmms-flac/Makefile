# $OpenBSD: Makefile,v 1.4 2002/07/07 19:09:29 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.0.3
PKGNAME=	xmms-flac-${VERSION}
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

LIB_DEPENDS=	xmms.3::audio/xmms \
		FLAC.3::audio/flac

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
