# $OpenBSD: Makefile,v 1.17 2009/05/23 17:51:14 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	SILC plugin for irssi

DISTNAME=	irssi-silc-1.1.7
PKGNAME=	${DISTNAME}p1

CATEGORIES=	net

HOMEPAGE=	http://penguin-breeder.org/silc/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mirrors.protection.cx/~martynas/

BUILD_DEPENDS=	::devel/gettext \
		::devel/glib2
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= :yasm-*:devel/yasm
.endif
RUN_DEPENDS=	:irssi->=0.8.13:net/irssi

MAKE_FLAGS=	libfe_common_silc_la_LDFLAGS=-avoid-version \
		libsilc_core_la_LDFLAGS=-avoid-version

USE_LIBTOOL=	  Yes
LIBTOOL_FLAGS+=	  --tag=disable-static
CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.61
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
