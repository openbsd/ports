# $OpenBSD: Makefile,v 1.6 2004/11/21 17:51:45 espie Exp $

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
WANTLIB=		c m z

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

MODULES=	devel/gettext
LIB_DEPENDS=	id3tag.3::audio/libid3tag mad.2::audio/libmad

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+= --with-esd
LIB_DEPENDS+=   esd.2::audio/esound
WANTLIB+=	audiofile
.else
CONFIGURE_ARGS+= --without-esd
.endif

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
