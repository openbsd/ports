# $OpenBSD: Makefile,v 1.56 2014/03/23 16:06:37 naddy Exp $

COMMENT=	sound library for Enlightenment

DISTNAME=	esound-0.2.41
REVISION=	1
EPOCH=		0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/esound/0.2/}

SHARED_LIBS +=	esd                  2.40     # .2.38

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	devel/libaudiofile

# LGPLv2+ and GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC audiofile c m ogg sndio

USE_GROFF=	Yes
SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-alsa \
		--disable-oss
# broken, relies upon v4-mapped addresses
CONFIGURE_ARGS+= --disable-ipv6

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		esdconfdir=${PREFIX}/share/examples/esound

post-extract:
	@cp -f ${FILESDIR}/audio_sndio.c ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test-script

.include <bsd.port.mk>
