# $OpenBSD: Makefile,v 1.1.1.1 2000/12/26 22:33:28 reinhard Exp $

DISTNAME=	irssi-0.7.97.2
CATEGORIES=	net
NEED_VERSION=	1.346

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

HOMEPAGE=	http://www.irssi.org

MASTER_SITES=	${HOMEPAGE}/files/ \
		http://www.pl.irssi.org/files/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		glib.1.2::devel/glib 

SEPARATE_BUILD=		Concurrent

CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS+=	--enable-ipv6 
CONFIGURE_ARGS+=	--with-proxy --with-socks 
CONFIGURE_ARGS+=	--with-textui --enable-curses-windows
CONFIGURE_ARGS+=	--enable-perl=no

FLAVORS+=		gettext 
FLAVOR?=

.if ${FLAVOR:L:Mgettext}
CONFIGURE_ARGS+=	--with-gettext --with-included-gettext
LIB_DEPENDS+=		intl.1::devel/gettext
.else
CONFIGURE_ARGS+=	--without-gettext
.endif

WRKDIST=		${WRKDIR}/irssi-0.7.97

SAMPLE=		config default.theme colorless.theme

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi
	(cd ${WRKDIST} && ${INSTALL_DATA} ${SAMPLE} \
		${PREFIX}/share/examples/irssi) 

.include <bsd.port.mk>
