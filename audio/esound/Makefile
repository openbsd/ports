# $OpenBSD: Makefile,v 1.1.1.1 1999/03/22 05:03:31 brad Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

DISTNAME=	esound-0.2.8
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR=	gnome-1.0/sources

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	audiofile:${PORTSDIR}/devel/libaudiofile

SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal/
	@${INSTALL_DATA} ${WRKSRC}/esd.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
