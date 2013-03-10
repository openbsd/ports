# $OpenBSD: Makefile,v 1.54 2013/03/10 22:55:02 espie Exp $

COMMENT=	sound library for Enlightenment

DISTNAME=	esound-0.2.41
REVISION=	0
EPOCH=		0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/esound/0.2/}

SHARED_LIBS +=	esd                  2.40     # .2.38

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	devel/libaudiofile

# LGPLv2+ and GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	audiofile c m sndio wrap

USE_GROFF=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-alsa \
		--disable-oss \
		--with-libwrap
# broken, relies upon v4-mapped addresses
CONFIGURE_ARGS+= --disable-ipv6

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		esdconfdir=${PREFIX}/share/examples/esound

post-extract:
	@cp -f ${FILESDIR}/audio_sndio.c ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test-script

.include <bsd.port.mk>
