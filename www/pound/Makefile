# $OpenBSD: Makefile,v 1.16 2019/07/12 20:51:00 sthen Exp $

COMMENT =		HTTP reverse proxy/load balancer/SSL offload

DISTNAME =		Pound-2.8a
PKGNAME =		${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		http://www.apsis.ch/pound/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m pcreposix pthread ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			--with-owner=root \
			--with-group=bin

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pound.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pound
	${INSTALL_DATA} ${FILESDIR}/pound.cfg ${PREFIX}/share/examples/pound/

.include <bsd.port.mk>
