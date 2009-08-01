# $OpenBSD: Makefile,v 1.52 2009/08/01 19:24:34 sthen Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) client

DISTNAME=	silc-client-1.1.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses pcre pthread

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

MODULES=	devel/gettext
LIB_DEPENDS+=	glib-2.0.>=1000.0,gmodule-2.0.>=1000.0::devel/glib2

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= :yasm-*:devel/yasm
.endif

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
# Should be 2.63
AUTOCONF_VERSION= 2.61
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+= ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+= --enable-ipv6 \
		 --docdir=${PREFIX}/share/doc/silc \
		 --sysconfdir=${CONFDIR} \
		 --with-helpdir=${PREFIX}/share/silc/help \
		 --with-iconv=${LOCALBASE} \
		 --with-perl=no

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silc
	@mv -f ${PREFIX}/share/doc/silc/example_silc.conf \
		${PREFIX}/share/examples/silc/silc.conf

.include <bsd.port.mk>
