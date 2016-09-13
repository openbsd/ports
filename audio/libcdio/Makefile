# $OpenBSD: Makefile,v 1.17 2016/09/13 11:44:06 naddy Exp $

COMMENT=	compact disk input and control library

DISTNAME=	libcdio-0.80
REVISION=	7
CATEGORIES=	audio devel
MASTER_SITES=	${MASTER_SITE_GNU:=libcdio/}

SHARED_LIBS=	cdio		0.1 \
		cdio++		0.1 \
		cdio_cdda	0.1 \
		cdio_paranoia 	0.1 \
		iso9660		0.1 \
		iso9660++	0.1 \
		udf		0.1

HOMEPAGE=	https://www.gnu.org/software/libcdio/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c cddb iconv m ncurses stdc++

LIB_DEPENDS=	audio/libcddb \
		converters/libiconv

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS=	--disable-vcd-info
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cp ${FILESDIR}/openbsd.c ${WRKSRC}/lib/driver

post-install:
	cd ${WRKSRC} && ${INSTALL_DATA} libcdio_cdda.pc libcdio_paranoia.pc \
	  ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
