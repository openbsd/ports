# $OpenBSD: Makefile,v 1.10 2018/02/18 16:07:39 awolk Exp $

COMMENT=	displays the status of multi-player Internet Game servers

GH_ACCOUNT=	multiplay
GH_PROJECT=	qstat
GH_TAGNAME=	v2.14

CATEGORIES=	games
MAINTAINER=	Tom Murphy <openbsd@pertho.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

MAKE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	cd ${WRKSRC}; \
		export AUTOCONF_VERSION=${AUTOCONF_VERSION}; \
		export AUTOMAKE_VERSION=${AUTOMAKE_VERSION}; \
		./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qstat
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${WRKSRC}/qstatdoc.html \
		${PREFIX}/share/doc/qstat
	${INSTALL_DATA} ${WRKSRC}/qstat.cfg \
		${PREFIX}/share/examples/qstat

.include <bsd.port.mk>
