# $OpenBSD: Makefile,v 1.17 2001/05/06 01:46:55 lebel Exp $

COMMENT=	"mail image display for X11"

DISTNAME=	xfaces-3.3
CATEGORIES=	mail
NEED_VERSION=	1.402

# xfaces-sounds.tar.gz only in LOCAL_PORTS
MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/xfaces/ \
		ftp://odie.physik2.uni-rostock.de/pub/ \
		${MASTER_SITE_LOCAL}
DISTFILES=	${DISTNAME}.tar.Z xfaces-sounds.tar.gz

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		"BSD NO"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

LIB_DEPENDS=	compface::mail/faces

CONFIGURE_STYLE=imake

post-extract:
	@ln -sf ../sounds ${WRKSRC}

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/sounds
	@${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps

.include <bsd.port.mk>
