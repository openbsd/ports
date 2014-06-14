# $OpenBSD: Makefile,v 1.31 2014/06/14 10:34:45 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	SILC plugin for irssi

DISTNAME=	irssi-silc-1.1.8
REVISION=	5

CATEGORIES=	net

HOMEPAGE=	http://penguin-breeder.org/silc/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://martynas.blarzwurst.de/distfiles/

BUILD_DEPENDS=	devel/gettext \
		devel/glib2
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= devel/yasm
.endif
RUN_DEPENDS=	net/irssi>=0.8.15

MAKE_FLAGS=	libfe_common_silc_la_LDFLAGS=-avoid-version \
		libsilc_core_la_LDFLAGS=-avoid-version

LIBTOOL_FLAGS+=	  --tag=disable-static
USE_GROFF =	Yes
CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.63
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+= ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+=  --docdir=${PREFIX}/share/doc/irssi/silc \
		  --enable-ipv6 \
		  --enable-shared=no \
		  --with-iconv=${LOCALBASE} \
		  --with-perl \
		  --with-perl-lib=${PREFIX}/libdata/perl5/site_perl \
		  --with-pic \
		  --with-silc-plugin=${PREFIX}/lib/irssi

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=  --disable-asm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi  
	mv -f ${PREFIX}/share/irssi/scripts ${PREFIX}/share/examples/irssi/
	mv -f ${PREFIX}/share/irssi/themes ${PREFIX}/share/examples/irssi/

.include <bsd.port.mk>
