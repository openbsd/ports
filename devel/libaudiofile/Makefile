# $OpenBSD: Makefile,v 1.9 2000/02/12 08:02:14 turan Exp $

DISTNAME=	audiofile-0.1.9
PKGNAME=	libaudiofile-0.1.9
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/audiofile

NEED_VERSION=	1.73

MAINTAINER=	rohee@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@mkdir -p ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/audiofile.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
