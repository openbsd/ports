COMMENT =		HTTP reverse proxy/load balancer/SSL offload

DISTNAME =		Pound-2.8a
REVISION =		0
PKGNAME =		${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://www.apsis.ch/pound.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m pcreposix pthread ssl

MASTER_SITES =		https://www.apsis.ch/pound/
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
