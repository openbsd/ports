# $OpenBSD: Makefile,v 1.43 2009/10/11 15:23:51 okan Exp $

SHARED_ONLY=	Yes

COMMENT=	modular IRC client with many features (ipv6,socks,proxy)

DISTNAME=	irssi-0.8.14
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.irssi.org/

MAINTAINER=	Wiktor Izdebski <vicviq@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${HOMEPAGE}files/

WANTLIB=	c crypto m ncurses perl ssl util pcre

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0,gmodule-2.0::devel/glib2

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}
CONFIGURE_ARGS+=--enable-ipv6 \
		--with-pic \
		--with-proxy \
		--with-perl=yes \
		--with-perl-lib=${PREFIX}/libdata/perl5/site_perl

FLAVORS=	socks
FLAVOR?=

.if ${FLAVOR:L:Msocks}
CONFIGURE_ARGS+=	--with-socks
BUILD_DEPENDS+=		::security/dante
.endif

MAKE_FLAGS=	scriptdir="${SYSCONFDIR}/irssi/scripts" \
		themedir="${SYSCONFDIR}/irssi/themes"
FAKE_FLAGS=	confdir="${PREFIX}/share/examples/irssi" \
		scriptdir="${PREFIX}/share/examples/irssi/scripts" \
		themedir="${PREFIX}/share/examples/irssi/themes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/irssi.1

post-install:
	@rm -rf ${PREFIX}/include

.include <bsd.port.mk>
