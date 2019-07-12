# $OpenBSD: Makefile,v 1.81 2019/07/12 20:48:48 sthen Exp $

COMMENT=	Secure Internet Live Conferencing (SILC) client

DISTNAME=	silc-client-1.1.11
REVISION=	6
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://silcnet.org/client.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=  c crypto glib-2.0>=1000 gmodule-2.0>=1000 iconv intl curses
WANTLIB+= pcre pthread ssl

LIB_DEPENDS+=	devel/glib2

CONFDIR=	${SYSCONFDIR}/silc
SUBST_VARS=	CONFDIR

# XXX this doesn't yet work with our libtool, it will get confused and
# pick up libraries from silc-toolkit instead of its own unshared libraries.
#USE_LIBTOOL=	gnu
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --disable-asm \
		 --docdir=${PREFIX}/share/doc/silc \
		 --sysconfdir=${CONFDIR} \
		 --with-helpdir=${PREFIX}/share/silc/help \
		 --with-iconv=${LOCALBASE} \
		 --with-perl=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/silc
	@mv -f ${PREFIX}/share/doc/silc/example_silc.conf \
		${PREFIX}/share/examples/silc/silc.conf

.include <bsd.port.mk>
