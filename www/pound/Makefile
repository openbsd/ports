# $OpenBSD: Makefile,v 1.1.1.1 2009/04/09 01:06:24 sthen Exp $

COMMENT =		HTTP reverse proxy/load balancer/SSL offload

DISTNAME =		Pound-2.4.4
PKGNAME =		${DISTNAME:S/Pound/pound/}

CATEGORIES =		www

HOMEPAGE =		http://www.apsis.ch/pound/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto m pthread ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		pcreposix::devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			--with-owner=root \
			--with-group=bin

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pound.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pound
	${INSTALL_DATA} ${FILESDIR}/pound.cfg ${PREFIX}/share/examples/pound/

.include <bsd.port.mk>
