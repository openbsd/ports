# $OpenBSD: Makefile,v 1.72 2014/07/16 16:15:32 brad Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) client

DISTNAME=	silc-client-1.1.11
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://silcnet.org/client.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto glib-2.0>=1000 gmodule-2.0>=1000 ncurses pcre pthread \
		ssl

MODULES=	devel/gettext
LIB_DEPENDS+=	devel/glib2

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= devel/yasm
.endif

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

# XXX this doesn't yet work with our libtool, it will get confused and
# pick up libraries from silc-toolkit instead of its own unshared libraries.
USE_LIBTOOL=	gnu
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+= ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+= --docdir=${PREFIX}/share/doc/silc \
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
