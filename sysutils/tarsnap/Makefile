COMMENT=		client for the tarsnap.com online encrypted backup service
V=			1.0.41
DISTNAME=		tarsnap-autoconf-${V}
PKGNAME=		tarsnap-${V}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.tarsnap.com/
MAINTAINER=		James Turner <james@calminferno.net>

# May not be modified and may only be used with tarsnap.com
# see http://www.tarsnap.com/legal.html
PERMIT_PACKAGE=		restrictive licence
PERMIT_DISTFILES=	restrictive licence

WANTLIB += bz2>=10 c crypto lzma z

SITES=			https://www.tarsnap.com/download/
EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		archivers/xz \
			archivers/bzip2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tarsnap
	mv ${WRKINST}${SYSCONFDIR}/tarsnap.conf.sample ${PREFIX}/share/examples/tarsnap/tarsnap.conf

.include <bsd.port.mk>
