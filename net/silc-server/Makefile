# $OpenBSD: Makefile,v 1.7 2003/07/30 00:26:26 brad Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN= "config file parser bug on ${MACHINE_ARCH}"
.endif

COMMENT=	"Secure Internet Live Conferencing (SILC) server"

DISTNAME=	silc-server-0.9.13.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.silcnet.org/server/sources/ \
		ftp://ftp.silcnet.org/silc/server/sources/ \
		http://www.planetmirror.com/pub/silcnet/server/sources/ \
		ftp://ftp.au.silcnet.org/pub/silcnet/server/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/server/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/server/sources/ \
		http://the.wiretapped.net/security/network-security/silc/server/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/server/sources/

MODULES=	iconv

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.54
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/silcmath/mpi
CONFIGURE_ARGS=	\
	--enable-ipv6 \
	--without-irssi \
	--with-docdir=${PREFIX}/share/doc/silcd	\
	--with-etcdir=${SYSCONFDIR}/silcd \
	--with-logsdir=/var/log/silcd \
	--with-simdir=${PREFIX}/lib \
	--with-silcd-config-file=${SYSCONFDIR}/silcd/silcd.conf	\
	--with-silcd-pid-file=/var/run/silcd.pid

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silcd
	mv -f ${PREFIX}/share/doc/silcd/example_silcd.conf \
		${PREFIX}/share/examples/silcd/silcd.conf
	${INSTALL_DATA} ${WRKSRC}/doc/examples/cell_*.conf \
		${PREFIX}/share/examples/silcd
	${INSTALL_DATA} ${WRKSRC}/doc/silcalgs.conf \
		${PREFIX}/share/examples/silcd

.include <bsd.port.mk>
