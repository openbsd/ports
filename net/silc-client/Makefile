# $OpenBSD: Makefile,v 1.16 2002/12/09 15:17:43 brad Exp $

COMMENT=	"Secure Live Internet Conferencing (SILC) client"

DISTNAME=	silc-client-0.9.10.1
CATEGORIES=	net
HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		ftp://ftp.au.silcnet.org/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

LIB_DEPENDS=	glib.1.2,gmodule.1.2::devel/glib

MODULES=	iconv

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/irssi ${WRKSRC}/lib/silcmath/mpi
CONFIGURE_ARGS=	--enable-ipv6 \
		--with-helpdir=${PREFIX}/share/silc/help \
		--with-docdir=${PREFIX}/share/doc/silc \
		--with-etcdir=${SYSCONFDIR}/silc \
		--with-iconv=${LOCALBASE} \
		--with-perl-lib=${DESTDIR}${PREFIX}/libdata/perl5/site_perl

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		silc_etcdir=${PREFIX}/share/examples/silc-client \
		${INSTALLARCHLIB}=${WRKINST}/${INSTALLARCHLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silc
	mv -f ${PREFIX}/share/doc/silc/example_silc.conf \
		${PREFIX}/share/examples/silc/silc.conf.default

.include <bsd.port.mk>
