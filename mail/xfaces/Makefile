# $OpenBSD: Makefile,v 1.13 2000/04/09 17:37:00 espie Exp $

BROKEN=		bad packing lists

DISTNAME=	xfaces-3.3
CATEGORIES=	mail
NEED_VERSION=	 1.230
FAKE=No
# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://odie.physik2.uni-rostock.de/pub/ \
		${MASTER_SITE_LOCAL}
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		"BSD NO"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

LIB_DEPENDS=	compface::mail/faces

USE_IMAKE=	Yes

pre-configure:
	@ln -sf ../sounds ${WRKSRC}

pre-install:
	@mkdir -p ${LOCALBASE}/share/sounds
	@mkdir -p ${X11BASE}/include/X11/pixmaps

.include <bsd.port.mk>
