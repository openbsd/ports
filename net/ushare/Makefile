# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:58 espie Exp $

COMMENT=	UPnP A/V media server

DISTNAME=	ushare-1.1a
REVISION=	8
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net multimedia

HOMEPAGE=	http://ushare.geexbox.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread ixml threadutil>=1 upnp>=1

MASTER_SITES=	${HOMEPAGE}releases/

MODULES=	devel/gettext

LIB_DEPENDS=	net/libupnp>=1.6.17

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} \
		--with-libupnp-dir=${LOCALBASE}/lib \
		--disable-optimize \
		--disable-dlna

CFLAGS+=	-I${LOCALBASE}/include -I${WRKSRC} -DBSD -D__unix__

FAKE_FLAGS=	sysconfdir=${WRKINST}${PREFIX}/share/examples/ushare

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.else
CONFIGURE_ARGS+= --disable-debug
.endif

.include <bsd.port.mk>
