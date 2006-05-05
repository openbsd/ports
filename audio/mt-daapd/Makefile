# $OpenBSD: Makefile,v 1.3 2006/05/05 05:28:58 sturm Exp $

COMMENT=	"multi-threaded DAAP server"

DISTNAME=	mt-daapd-0.2.4
CATEGORIES=	audio net

HOMEPAGE=	http://www.mt-daapd.org/

MAINTAINER=	Arnaud Bergeron <abergeron@gmail.com>

# GPL APSL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mt-daapd/}

LIB_DEPENDS=	gdbm.3::databases/gdbm \
		id3tag.3::audio/libid3tag

WANTLIB=	c pthread z

FLAVORS=	howl
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gdbm-includes=${LOCALBASE}/include \
		--with-gdbm-libs=${LOCALBASE}/lib

.if ${FLAVOR:L:Mhowl}
LIB_DEPENDS+=	howl.0::net/howl
CONFIGURE_ARGS+=--enable-howl --with-howl-includes=${LOCALBASE}/include/howl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mt-daapd
	${INSTALL_DATA} ${WRKSRC}/contrib/mt-daapd.* \
		${PREFIX}/share/examples/mt-daapd

.include <bsd.port.mk>
