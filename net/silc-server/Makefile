# $OpenBSD: Makefile,v 1.74 2017/09/26 14:25:57 dcoppa Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) server

DISTNAME=	silc-server-1.1.19
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv pthread

LIB_DEPENDS=	converters/libiconv

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

FLAVORS=	operops
FLAVOR?=

.if ${FLAVOR:Moperops}
PATCH_LIST+=	patch-* operops-*
.endif

CONFDIR=	${SYSCONFDIR}/silcd
SUBST_VARS=	CONFDIR

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=	ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+= --docdir=${PREFIX}/share/doc/silcd \
		 --with-etcdir=${CONFDIR} \
		 --with-logsdir=/var/log/silcd \
		 --with-silcd-config-file=${CONFDIR}/silcd.conf \
		 --with-silcd-pid-file=/var/run/silcd.pid \
		 --enable-debug

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/silcd
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/silcd
	${INSTALL_DATA} ${WRKSRC}/doc/example_silcd.conf \
		${PREFIX}/share/examples/silcd/silcd.conf
	${INSTALL_DATA} ${WRKSRC}/doc/silcalgs.conf \
		${PREFIX}/share/examples/silcd

.include <bsd.port.mk>
