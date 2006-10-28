# $OpenBSD: Makefile,v 1.39 2006/10/28 10:30:41 espie Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

COMMENT=	"sound library for Enlightenment"

DISTNAME=	esound-0.2.34
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	esd                  2.34     # .2.34
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
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-libwrap
# broken, relies upon v4-mapped addresses
CONFIGURE_ARGS+= --disable-ipv6

post-extract:
	@cp -f ${FILESDIR}/audio_sun.c ${WRKSRC}

.include <bsd.port.mk>
