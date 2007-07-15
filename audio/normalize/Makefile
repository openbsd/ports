# $OpenBSD: Makefile,v 1.14 2007/07/15 19:37:04 kili Exp $

COMMENT=	"audio file volume normalizer"

DISTNAME=	normalize-0.7.7
CATEGORIES=	audio

MASTER_SITES=	http://savannah.nongnu.org/download/normalize/

HOMEPAGE=	http://normalize.nongnu.org/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

WANTLIB=	c m

CONFIGURE_STYLE=gnu

# Do not build xmms plugin for now.
CONFIGURE_ARGS=	--disable-xmms \
		--with-mad \
		--with-audiofile

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

LIB_DEPENDS=	mad.>=2::audio/libmad \
		audiofile::devel/libaudiofile

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
