# $OpenBSD: Makefile,v 1.5 2002/11/03 02:14:54 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.0.4
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
		FLAC.4::audio/flac

WRKSRC=		${WRKDIST}/src/plugin_xmms
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}

CONFIGURE_STYLE= gnu automake
CONFIGURE_ARGS=	--without-id3lib

# libtool doesn't handle linking a module against a convenience library

PLUGIN_COMMON_FILES=	all.h canonical_tag.c canonical_tag.h \
	charset.c:charset_common.c charset.h:charset_common.h \
	dither.c dither.h id3v1.c id3v1.h id3v2.c id3v2.h \
	locale_hack.h vorbiscomment.c vorbiscomment.h

pre-patch:
.for file in ${PLUGIN_COMMON_FILES}
	@cp ${WRKDIST}/src/plugin_common/${file:C/:.*//} \
	    ${WRKSRC}/${file:C/.*://}
.endfor

post-patch:
	@cd ${WRKDIST}; automake -v -i src/plugin_xmms/Makefile

pre-configure:
	@echo '#!/bin/sh' >${WRKSRC}/configure
	@echo 'cd ../..; exec ./configure "$$@"' >>${WRKSRC}/configure
	@chmod a+x ${WRKSRC}/configure

.include <bsd.port.mk>
