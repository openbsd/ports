# $OpenBSD: Makefile,v 1.8 2000/02/12 09:35:03 turan Exp $

BROKEN=		bad packing lists

DISTNAME=	xfaces-3.3
CATEGORIES=	mail
# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://odie.physik2.uni-rostock.de/pub/ \
		${MASTER_SITE_LOCAL}
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	compface:${PORTSDIR}/mail/faces

USE_IMAKE=	YES

pre-configure:
	@ln -sf ../sounds ${WRKSRC}

pre-install:
	@mkdir -p ${LOCALBASE}/share/sounds
	@mkdir -p ${X11BASE}/include/X11/pixmaps

.include <bsd.port.mk>
