# $OpenBSD: Makefile,v 1.29 2002/07/26 19:57:23 brad Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

COMMENT=	"sound library for Enlightenment"

DISTNAME=	esound-0.2.28
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=stable/sources/esound/}

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	audiofile::devel/libaudiofile

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-libwrap

post-extract:
	@cp -f ${FILESDIR}/audio_sun.c ${WRKSRC}

post-install:
	@cd ${PREFIX}/share/examples/esound && mv esd.conf esd.conf-sample

.include <bsd.port.mk>
