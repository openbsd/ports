# $OpenBSD: Makefile,v 1.46 2008/08/27 00:35:24 martynas Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) client

DISTNAME=	silc-client-1.1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

HOMEPAGE=	http://www.silcnet.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses pcre

MASTER_SITES=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

MODULES=	devel/gettext
LIB_DEPENDS+=	glib-2.0.>=1000.0,gmodule-2.0.>=1000.0::devel/glib2

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= --enable-ipv6 \
		 --docdir=${PREFIX}/share/doc/silc \
		 --sysconfdir=${CONFDIR} \
		 --with-helpdir=${PREFIX}/share/silc/help \
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
