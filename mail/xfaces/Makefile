# $OpenBSD: Makefile,v 1.10 2000/02/15 05:04:43 turan Exp $

BROKEN=		bad packing lists

DISTNAME=	xfaces-3.3
CATEGORIES=	mail
# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://odie.physik2.uni-rostock.de/pub/ \
		${MASTER_SITE_LOCAL}
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		"BSD NO"
PERMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	NO
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	NO

LIB_DEPENDS=	compface:${PORTSDIR}/mail/faces

USE_IMAKE=	YES

pre-configure:
	@ln -sf ../sounds ${WRKSRC}

pre-install:
	@mkdir -p ${LOCALBASE}/share/sounds
	@mkdir -p ${X11BASE}/include/X11/pixmaps

.include <bsd.port.mk>
