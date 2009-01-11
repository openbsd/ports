# $OpenBSD: Makefile,v 1.41 2009/01/11 17:36:34 naddy Exp $

COMMENT=	MPEG-1/2 audio layer 1, 2, and 3 player

DISTNAME=	mpg123-1.6.4
SHARED_LIBS=	mpg123	0.1	# .11.3
CATEGORIES=	audio
HOMEPAGE=	http://www.mpg123.de/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg123/}

WANTLIB=	c m sndio
LIB_DEPENDS=	ltdl::devel/libtool,-ltdl

USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.62
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--with-audio=sndio \
		--with-optimization=0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/src/libmpg123/.libs -L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

.if   ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--with-cpu=generic_nofpu
.elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-cpu=x86
.else
CONFIGURE_ARGS+=--with-cpu=generic_fpu
.endif

post-extract:
	@cp ${FILESDIR}/sndio.c ${WRKSRC}/src/output

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
