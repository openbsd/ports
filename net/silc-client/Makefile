# $OpenBSD: Makefile,v 1.34 2006/08/03 23:15:58 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Secure Internet Live Conferencing (SILC) client"

DISTNAME=	silc-client-1.0.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses perl util 

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		ftp://ftp.au.silcnet.org/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

LIB_DEPENDS+=	glib.>=1.2,gmodule.>=1.2::devel/glib

MODULES=	converters/libiconv

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/irssi ${WRKSRC}/lib/silcmath/mpi
CONFIGURE_ARGS+= --enable-ipv6 \
		 --with-helpdir=${PREFIX}/share/silc/help \
		 --with-docdir=${PREFIX}/share/doc/silc \
		 --with-etcdir=${CONFDIR} \
		 --with-iconv=${LOCALBASE} \
		 --with-perl-lib=${PREFIX}/libdata/perl5/site_perl

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silc
	@mv -f ${PREFIX}/share/doc/silc/example_silc.conf \
		${PREFIX}/share/examples/silc/silc.conf
	${INSTALL_DATA} ${WRKSRC}/doc/silcalgs.conf \
		${PREFIX}/share/examples/silc

.include <bsd.port.mk>
