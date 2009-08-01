# $OpenBSD: Makefile,v 1.55 2009/08/01 09:21:55 sthen Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) server

DISTNAME=	silc-server-1.1.17
CATEGORIES=	net

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=	http://ftp.silcnet.org/server/sources/ \
		ftp://ftp.silcnet.org/silc/server/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/server/sources/ \
		http://the.wiretapped.net/security/network-security/silc/server/sources/

MODULES=	converters/libiconv

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	:yasm-*:devel/yasm
.endif

FLAVORS=	operops
FLAVOR?=

.if ${FLAVOR:L:Moperops}
PATCH_LIST+=	patch-* operops-*
.endif

CONFDIR=	${SYSCONFDIR}/silcd
SUBST_VARS=	CONFDIR

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
# XXX should be 2.63
AUTOCONF_VERSION= 2.61
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
