# $OpenBSD: Makefile,v 1.3 2003/01/26 19:11:17 brad Exp $

COMMENT=	"Secure Live Internet Conferencing (SILC) server"

DISTNAME=	silc-server-0.9.12
CATEGORIES=	net
HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

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

CONFIGURE_STYLE= gnu
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
	mv -f ${PREFIX}/share/doc/silcd/examples/* \
		${PREFIX}/share/examples/silcd
	rm -rf ${PREFIX}/share/doc/silcd/examples

.include <bsd.port.mk>
