# $OpenBSD: Makefile,v 1.45 2008/12/20 08:58:32 jakemsr Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

COMMENT=	sound library for Enlightenment

DISTNAME=	esound-0.2.41
PKGNAME=	${DISTNAME}v0
SHARED_LIBS +=	esd                  2.40     # .2.38
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/esound/0.2/}

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	audiofile::devel/libaudiofile

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m sndio wrap

FLAVORS=	arts
FLAVOR?=

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

.if ${FLAVOR:L:Marts}
CONFIGURE_ARGS+=--enable-arts
MODULES+=	devel/gettext
LIB_DEPENDS+=	artsc::x11/kde/arts3
WANTLIB+=	glib-2.0 gthread-2.0 gmodule-2.0 pcre pthread stdc++
.else
CONFIGURE_ARGS+=--disable-arts
.endif

FAKE_FLAGS=	DESTDIR=${WRKINST} \
		esdconfdir=${PREFIX}/share/examples/esound

post-extract:
	@cp -f ${FILESDIR}/audio_sndio.c ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test-script

.include <bsd.port.mk>
