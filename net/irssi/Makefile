# $OpenBSD: Makefile,v 1.10 2001/11/20 10:06:29 reinhard Exp $
# Original from: Timo Sirainen <tss@iki.fi>

COMMENT=	"modular IRC client with many features (ipv6,socks,proxy)"

DISTNAME=	irssi-0.7.98.4
CATEGORIES=	net
NEED_VERSION=	1.499

MASTER_SITES=	${HOMEPAGE}/files/ \
		http://nl.irssi.org/files/ \
		http://fi.irssi.org/files/ \
		http://no.irssi.org/files/ \
		http://de.irssi.org/files/ \
		http://uk.irssi.org/files/ \
		http://pl.irssi.org/files/ \
		http://us.irssi.org/files/ 

HOMEPAGE=	http://www.irssi.org

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:gettext-*:devel/gettext
LIB_DEPENDS=		glib.1.2,gmodule::devel/glib 

SEPARATE_BUILD=		Concurrent

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--prefix=${PREFIX} --datadir=${PREFIX}/share/doc
CONFIGURE_ARGS+=	--enable-ipv6 --with-bot
CONFIGURE_ARGS+=	--with-proxy --with-socks 
CONFIGURE_ARGS+=	--with-textui --enable-curses-windows
CONFIGURE_ARGS+=	--enable-perl=no

FLAVORS+=		gettext 
FLAVOR?=

.if ${FLAVOR:L:Mgettext}
CONFIGURE_ARGS+=	--with-gettext 
LIB_DEPENDS+=		intl.1::devel/gettext
.else
CONFIGURE_ARGS+=	--with-included-gettext
.endif

SAMPLE=		config default.theme colorless.theme

pre-configure:
	@perl -pi -e 's,-lcrypt,-crypt,g' ${WRKSRC}/src/irc/bot/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi
	(cd ${WRKDIST} && ${INSTALL_DATA} ${SAMPLE} \
		${PREFIX}/share/examples/irssi) 

.include <bsd.port.mk>
