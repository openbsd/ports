COMMENT=	multi-threaded DAAP server

DISTNAME=	mt-daapd-0.2.4.2
REVISION=	8

CATEGORIES=	audio net

HOMEPAGE=	http://www.mt-daapd.org/

# GPL APSL
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c gdbm id3tag>=3 pthread z

SITES=		${SITE_SOURCEFORGE:=mt-daapd/}

LIB_DEPENDS=	net/avahi,-libs \
		audio/libid3tag \
		databases/gdbm

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gdbm-includes=${LOCALBASE}/include \
		--with-gdbm-libs=${LOCALBASE}/lib \
		--enable-avahi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/contrib/mt-daapd.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mt-daapd
	${INSTALL_DATA} ${WRKSRC}/contrib/mt-daapd.{conf,playlist,spec} \
		${PREFIX}/share/examples/mt-daapd

.include <bsd.port.mk>
