# $OpenBSD: Makefile,v 1.77 2019/07/12 20:48:48 sthen Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) server

DISTNAME=	silc-server-1.1.19
REVISION=	4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv pthread

LIB_DEPENDS=	converters/libiconv

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
CONFIGURE_ARGS+= --disable-asm \
		 --docdir=${PREFIX}/share/doc/silcd \
		 --with-etcdir=${CONFDIR} \
		 --with-logsdir=/var/log/silcd \
		 --with-silcd-config-file=${CONFDIR}/silcd.conf \
		 --with-silcd-pid-file=/var/run/silcd.pid \
		 --enable-debug

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/silcd
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${PREFIX}/share/doc/silcd
	${INSTALL_DATA} ${WRKSRC}/doc/example_silcd.conf \
		${PREFIX}/share/examples/silcd/silcd.conf
	${INSTALL_DATA} ${WRKSRC}/doc/silcalgs.conf \
		${PREFIX}/share/examples/silcd

.include <bsd.port.mk>
