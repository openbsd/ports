# $OpenBSD: Makefile,v 1.9 2015/08/21 15:15:44 jturner Exp $

COMMENT=		client for the tarsnap.com online encrypted backup service
V=			1.0.36
DISTNAME=		tarsnap-autoconf-${V}
PKGNAME=		tarsnap-${V}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.tarsnap.com/
MAINTAINER=		James Turner <james@calminferno.net>

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
