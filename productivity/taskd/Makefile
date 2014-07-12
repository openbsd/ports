# $OpenBSD: Makefile,v 1.1.1.1 2014/07/12 22:08:35 landry Exp $

COMMENT =	lightweight server providing access to task data

DISTNAME =	taskd-1.0.0
CATEGORIES =	productivity net

HOMEPAGE =	http://www.taskwarrior.org/

MASTER_SITES =	${HOMEPAGE}/download/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		devel/cmake

WANTLIB += c gnutls m pthread stdc++ uuid

LIB_DEPENDS =	security/gnutls \
		sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASKD_DOCDIR=share/taskd \
			-DTASKD_MAN1DIR=man/man1 \
			-DTASKD_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/taskd/pki/
	${INSTALL_SCRIPT} ${WRKSRC}/pki/!(*.orig) \
		${PREFIX}/share/examples/taskd/pki/
	${SUBST_CMD} -c -o root -g bin -m 444 ${FILESDIR}/config \
		${PREFIX}/share/examples/taskd/config
	${INSTALL_DATA} ${FILESDIR}/vars.dist ${PREFIX}/share/examples/taskd/pki/

.include <bsd.port.mk>
