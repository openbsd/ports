# $OpenBSD: Makefile,v 1.1.1.1 2010/03/22 22:26:59 ajacoutot Exp $

COMMENT=	UPnP A/V media server

DISTNAME=	ushare-1.1a
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net multimedia

HOMEPAGE=	http://ushare.geexbox.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread

MASTER_SITES=	${HOMEPAGE}releases/

MODULES=	devel/gettext

LIB_DEPENDS=	ixml,threadutil,upnp::net/libupnp

USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv" \
		MAKE=${MAKE_PROGRAM}
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
