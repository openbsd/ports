# $OpenBSD: Makefile,v 1.5 2009/02/09 22:06:30 sthen Exp $

COMMENT=		compact disk input and control library

DISTNAME=		libcdio-0.80
PKGNAME=		${DISTNAME}p2
CATEGORIES=		audio devel

HOMEPAGE=		http://www.gnu.org/software/libcdio/

SHARED_LIBS +=  cdio		0.1
SHARED_LIBS +=  cdio++		0.1
SHARED_LIBS +=  cdio_cdda	0.1
SHARED_LIBS +=  cdio_paranoia 	0.1
SHARED_LIBS +=  iso9660		0.1
SHARED_LIBS +=  iso9660++	0.1
SHARED_LIBS +=  udf		0.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses m

MASTER_SITES=	${MASTER_SITE_GNU:=libcdio/}

MODULES=	converters/libiconv

LIB_DEPENDS=	cddb::audio/libcddb

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-cxx \
		--enable-joliet \
		--enable-rock \
		--enable-cddb \
		--disable-vcd-info \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-cd-drive \
		--with-cd-info \
		--with-cd-paranoia \
		--with-cd-read \
		--with-iso-info \
		--with-iso-read
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-extract:
	cp ${FILESDIR}/openbsd.c ${WRKSRC}/lib/driver

post-install:
	cd ${WRKSRC} && ${INSTALL_DATA} libcdio_cdda.pc libcdio_paranoia.pc \
	  ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
