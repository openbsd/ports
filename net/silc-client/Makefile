# $OpenBSD: Makefile,v 1.41 2007/09/01 20:11:21 kili Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) client

DISTNAME=	silc-client-1.0.4.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

LIB_DEPENDS+=	glib.>=1.2,gmodule.>=1.2::devel/glib

MODULES=	converters/libiconv

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= --enable-ipv6 \
		 --with-helpdir=${PREFIX}/share/silc/help \
		 --with-docdir=${PREFIX}/share/doc/silc \
		 --with-etcdir=${CONFDIR} \
		 --with-iconv=${LOCALBASE} \
		 --without-libtoolfix \
		 --with-perl=no

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+= --disable-asm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silc
	@mv -f ${PREFIX}/share/doc/silc/example_silc.conf \
		${PREFIX}/share/examples/silc/silc.conf

.include <bsd.port.mk>
