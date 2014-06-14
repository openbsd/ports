# $OpenBSD: Makefile,v 1.59 2014/06/14 10:34:45 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	modular IRC client with many features (ipv6,socks,proxy)

DISTNAME=	irssi-0.8.16
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	http://www.irssi.org/

MAINTAINER=	Wiktor Izdebski <vicviq@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=   ${HOMEPAGE}files/

WANTLIB=	c crypto m ncurses perl pthread ssl util \
		pcre glib-2.0 gmodule-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2

LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}
CONFIGURE_ARGS+=--with-pic \
		--with-proxy \
		--with-perl=yes \
		--with-perl-lib=${PREFIX}/libdata/perl5/site_perl

FLAVORS=	socks
FLAVOR?=

.if ${FLAVOR:Msocks}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-socks
LIB_DEPENDS+=		security/dante
WANTLIB+=		socks
.endif

MAKE_FLAGS=	scriptdir="${SYSCONFDIR}/irssi/scripts" \
		themedir="${SYSCONFDIR}/irssi/themes"
FAKE_FLAGS=	confdir="${PREFIX}/share/examples/irssi" \
		scriptdir="${PREFIX}/share/examples/irssi/scripts" \
		themedir="${PREFIX}/share/examples/irssi/themes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/irssi.1

.include <bsd.port.mk>
