# $OpenBSD: Makefile,v 1.40 2007/06/26 17:10:29 martynas Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

COMMENT=	"sound library for Enlightenment"

DISTNAME=	esound-0.2.38
SHARED_LIBS +=	esd                  2.38     # .2.38
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/esound/0.2/}

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	audiofile::devel/libaudiofile

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m wrap

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-alsa \
		 --disable-oss \
		 --with-libwrap
# broken, relies upon v4-mapped addresses
CONFIGURE_ARGS+= --disable-ipv6

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		esdconfdir=${PREFIX}/share/examples/esound

post-extract:
	@cp -f ${FILESDIR}/audio_sun.c ${WRKSRC}

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|' \
		${WRKSRC}/test-script

.include <bsd.port.mk>
