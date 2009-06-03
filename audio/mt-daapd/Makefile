# $OpenBSD: Makefile,v 1.11 2009/06/03 16:37:31 ajacoutot Exp $

COMMENT=	multi-threaded DAAP server

DISTNAME=	mt-daapd-0.2.4.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio net

HOMEPAGE=	http://www.mt-daapd.org/

# GPL APSL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mt-daapd/}

LIB_DEPENDS=	avahi-client,avahi-common::net/avahi \
		id3tag.>=3::audio/libid3tag

WANTLIB += c gdbm pthread z

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
