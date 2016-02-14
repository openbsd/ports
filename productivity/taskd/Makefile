# $OpenBSD: Makefile,v 1.6 2016/02/14 11:31:25 sthen Exp $

COMMENT =	lightweight server providing access to task data

DISTNAME =	taskd-1.1.0
CATEGORIES =	productivity net
REVISION =	0

HOMEPAGE =	http://www.taskwarrior.org/

MAINTAINER =	Kent R. Spillner <kspillner@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/download/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		gcc4 \
			devel/cmake

MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

WANTLIB += c gnutls m pthread

LIB_DEPENDS =	security/gnutls

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASKD_DOCDIR=share/taskd \
			-DTASKD_MAN1DIR=man/man1 \
			-DTASKD_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/taskd/pki/
	${INSTALL_SCRIPT} ${WRKSRC}/pki/generate!(*.orig) \
		${PREFIX}/share/examples/taskd/pki/
	${INSTALL_DATA} ${WRKSRC}/pki/README \
		${PREFIX}/share/examples/taskd/pki/
	${INSTALL_DATA} ${WRKSRC}/pki/vars \
		${PREFIX}/share/examples/taskd/pki/vars.dist
	${SUBST_DATA} ${FILESDIR}/config \
		${PREFIX}/share/examples/taskd/config

.include <bsd.port.mk>
