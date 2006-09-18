# $OpenBSD: Makefile,v 1.28 2006/09/18 11:59:59 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"modular IRC client with many features (ipv6,socks,proxy)"

DISTNAME=	irssi-0.8.10
DISTFILES=	irssi-0.8.10a.tar.gz
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.irssi.org/

MAINTAINER=	Wiktor Izdebski <vicviq@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${HOMEPAGE}/files/

WANTLIB=	c crypto m ncurses perl ssl util

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0,gmodule-2.0::devel/glib2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}
CONFIGURE_ARGS+=--enable-ipv6 \
		--with-pic \
		--with-proxy \
		--without-included-gettext \
		--enable-perl=yes \
		--with-perl-lib=${PREFIX}/libdata/perl5/site_perl

FLAVORS=	socks
FLAVOR?=

.if ${FLAVOR:L:Msocks}
CONFIGURE_ARGS+=	--with-socks
BUILD_DEPENDS+=		::security/dante
.endif

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g;" \
		-e "s,!!SYSCONFDIR!!,${SYSCONFDIR},g" ${WRKSRC}/docs/irssi.1

post-install:
	${INSTALL_DATA} ${WRKDIST}/irssi.conf ${PREFIX}/share/examples/irssi
	@rm -rf ${PREFIX}/include

.include <bsd.port.mk>
