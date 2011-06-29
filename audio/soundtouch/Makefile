# $OpenBSD: Makefile,v 1.7 2011/06/29 11:30:31 jasper Exp $

COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.3.1
REVISION=	0
SHARED_LIBS +=	BPM		0.0      # .0.0
SHARED_LIBS +=	SoundTouch	0.0      # .0.0
CATEGORIES=	audio devel

HOMEPAGE=	http://www.surina.net/soundtouch/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m stdc++

BUILD_DEPENDS=	devel/libtool

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS}"

# Cleanup the symlink mess in config/
post-extract:
.for f in install-sh config.sub config.guess depcomp
	cd ${WRKSRC}/config/ && rm $f && \
		ln -s ${LOCALBASE}/share/libtool/config/$f
.endfor

.include <bsd.port.mk>
