# $OpenBSD: Makefile,v 1.8 2019/05/20 22:15:19 naddy Exp $

COMMENT=	capture network traffic, display streams sorted by bandwidth

DISTNAME=	jnettop-0.13.0
REVISION=	3

CATEGORIES=	net

HOMEPAGE=	http://jnettop.kubs.info/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 gthread-2.0 intl ncurses pcap pthread

MASTER_SITES=	${HOMEPAGE}dist/

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/glib2

MAKE_FLAGS=	CFLAGS="${CFLAGS}"

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${SUBST_CMD} ${PREFIX}/man/man8/jnettop.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jnettop
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/jnettop/
	${SUBST_DATA} ${WRKSRC}/.jnettop \
	    ${PREFIX}/share/doc/jnettop/dot.jnettop

.include <bsd.port.mk>
