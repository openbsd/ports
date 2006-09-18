# $OpenBSD: Makefile,v 1.9 2006/09/18 09:04:03 espie Exp $

COMMENT=	"command-line MPEG audio decoder and player"

DISTNAME=	madplay-0.15.2b
CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

MODULES=	devel/gettext
LIB_DEPENDS=	id3tag.>=3::audio/libid3tag mad.>=2::audio/libmad
WANTLIB=	c m z

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+= --with-esd
LIB_DEPENDS+=   esd.>=2::audio/esound
WANTLIB+=	audiofile
.else
CONFIGURE_ARGS+= --without-esd
.endif

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
