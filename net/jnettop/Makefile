# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:29 sthen Exp $

COMMENT=	capture network traffic, display streams sorted by bandwidth

DISTNAME=	jnettop-0.13.0
REVISION=	4

CATEGORIES=	net

HOMEPAGE=	http://jnettop.kubs.info/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 gthread-2.0 intl curses pcap pthread

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
