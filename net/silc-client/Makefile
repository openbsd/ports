# $OpenBSD: Makefile,v 1.14 2002/10/05 19:41:17 fgsch Exp $

COMMENT=	"Secure Live Internet Conferencing (SILC) client"

DISTNAME=	silc-client-0.9.5.1
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

USE_LIBTOOL=	yes

MODULES=	iconv

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-helpdir=${PREFIX}/share/silc/help \
		--with-docdir=${PREFIX}/share/doc/silc \
		--with-etcdir=${SYSCONFDIR}/silc \
		--with-perl-lib=${DESTDIR}${PREFIX}/libdata/perl5/site_perl \
		--enable-ipv6

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

# If you want to help with testing silc-client, uncomment this
# and subscribe to silc-devel at lists.sourceforge.net
#
#CONFIGURE_ARGS+=	--enable-debug

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/irssi ${WRKSRC}/lib/silcmath/mpi
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		silc_etcdir=${PREFIX}/share/examples/silc-client \
		${INSTALLARCHLIB}=${WRKINST}/${INSTALLARCHLIB}

.include <bsd.port.mk>
