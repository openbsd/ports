# $OpenBSD: Makefile,v 1.2 2008/01/01 21:54:20 jasper Exp $

BROKEN= 		due to protocol change, this doesn't function anymore

COMMENT=		last.fm client for MPD

DISTNAME=		mpdscribble-0.2.12
CATEGORIES=		audio

HOMEPAGE=		http://www.frob.nl/scribble.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=		http://www.frob.nl/projects/scribble/

CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			soup-2.2::devel/libsoup \
			xml2::textproc/libxml

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/setup.sh ${PREFIX}/bin/mpdscribble_setup.sh

.include <bsd.port.mk>
