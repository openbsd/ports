# $OpenBSD: Makefile,v 1.16 2015/06/26 18:39:12 ajacoutot Exp $

PORTROACH=	skipv:1.1

COMMENT=	UPnP A/V media server

DISTNAME=	ushare-1.1a
REVISION=	9
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net multimedia

HOMEPAGE=	http://ushare.geexbox.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread ixml threadutil upnp

MASTER_SITES=	${HOMEPAGE}releases/

MODULES=	devel/gettext

LIB_DEPENDS=	net/libupnp

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} \
		--disable-optimize \
		--disable-dlna

CFLAGS+=	-I${LOCALBASE}/include -I${WRKSRC} \
		-DHAVE_ICONV -DBSD -D__unix__

FAKE_FLAGS=	sysconfdir=${WRKINST}${PREFIX}/share/examples/ushare

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.else
CONFIGURE_ARGS+= --disable-debug
.endif

post-install:
	rm -r ${PREFIX}/share/examples/ushare/init.d/

.include <bsd.port.mk>
