# $OpenBSD: Makefile,v 1.3 1999/06/14 18:09:26 brad Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

DISTNAME=	esound-0.2.8
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= gnome-1.0/sources

NEED_VERSION=	1.78

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	audiofile:${PORTSDIR}/devel/libaudiofile

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-libwrap

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/esd.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
