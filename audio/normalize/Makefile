# $OpenBSD: Makefile,v 1.23 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT=	audio file volume normalizer

DISTNAME=	normalize-0.7.7
REVISION=	0
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=normalize/}

HOMEPAGE=	http://normalize.nongnu.org/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB=	c m mad>=2 audiofile

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

# Do not build xmms plugin for now.
CONFIGURE_ARGS=	--disable-xmms \
		--with-mad \
		--with-audiofile

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

LIB_DEPENDS=	audio/libmad \
		devel/libaudiofile


.include <bsd.port.mk>
