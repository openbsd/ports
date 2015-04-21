# $OpenBSD: Makefile,v 1.8 2015/04/21 18:19:27 sthen Exp $

COMMENT=		client for the tarsnap.com online encrypted backup service
V=			1.0.35
DISTNAME=		tarsnap-autoconf-${V}
PKGNAME=		tarsnap-${V}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.tarsnap.com/
MAINTAINER=		James Turner <james@calminferno.net>
REVISION=		0

# May not be modified and may only be used with tarsnap.com
# see http://www.tarsnap.com/legal.html
PERMIT_PACKAGE_CDROM=	restrictive licence
PERMIT_PACKAGE_FTP=	restrictive licence
PERMIT_DISTFILES_FTP=	restrictive licence

WANTLIB += bz2>=10 c crypto lzma pthread z

MASTER_SITES=		https://www.tarsnap.com/download/
EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		archivers/xz \
			archivers/bzip2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tarsnap
	mv ${WRKINST}${SYSCONFDIR}/tarsnap.conf.sample ${PREFIX}/share/examples/tarsnap/tarsnap.conf

.include <bsd.port.mk>
