# $OpenBSD: Makefile,v 1.1.1.1 2012/03/13 09:42:22 sthen Exp $

COMMENT=	capture network traffic, display streams sorted by bandwidth

DISTNAME=	jnettop-0.13.0

CATEGORIES=	net

HOMEPAGE=	http://jnettop.kubs.info/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 gthread-2.0 ncurses pcap pthread

MASTER_SITES=	${HOMEPAGE}dist/

MODULES+=	devel/gettext
LIB_DEPENDS=	devel/glib2

MAKE_FLAGS=	CFLAGS="${CFLAGS}"

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu

post-build:
	${SUBST_CMD} ${WRKSRC}/jnettop.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jnettop
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/jnettop/
	${INSTALL_DATA} ${WRKSRC}/.jnettop \
	    ${PREFIX}/share/doc/jnettop/dot.jnettop

.include <bsd.port.mk>
