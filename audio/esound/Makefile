# $OpenBSD: Makefile,v 1.32 2004/04/08 00:05:48 brad Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

COMMENT=	"sound library for Enlightenment"

DISTNAME=	esound-0.2.28
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/esound/0.2/}

HOMEPAGE=	http://www.tux.org/~ricdude/EsounD.html

LIB_DEPENDS=	audiofile::devel/libaudiofile

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-libwrap

post-extract:
	@cp -f ${FILESDIR}/audio_sun.c ${WRKSRC}

post-install:
	@cd ${PREFIX}/share/examples/esound && mv esd.conf esd.conf-sample

.include <bsd.port.mk>
