# $OpenBSD: Makefile,v 1.8 2000/02/12 08:02:09 turan Exp $
# $FreeBSD: Makefile,v 1.8 1999/03/09 01:08:46 nectar Exp $

DISTNAME=	esound-0.2.16
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/esound

NEED_VERSION=	1.78

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	audiofile:${PORTSDIR}/devel/libaudiofile

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-libwrap

post-install:
	@mkdir -p ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/esd.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
