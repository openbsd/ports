# $OpenBSD: Makefile,v 1.8 2013/06/24 08:47:12 dcoppa Exp $

COMMENT =		accessing and converting various ebook file formats
V =			0.2.1
DISTNAME =		ebook-tools-${V}
REVISION =		2

SHARED_LIBS +=		epub		0.0	# 0.2

CATEGORIES =		textproc devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c xml2 zip z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ebook-tools/${V}/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/doxygen \
			math/graphviz
LIB_DEPENDS =		textproc/libxml \
			archivers/libzip \

NO_TEST =		Yes

MAKE_ENV=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}

DOCSDIR =		${PREFIX}/share/doc/ebook-tools

post-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} doc

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cp -R ${WRKBUILD}/doc/html ${DOCSDIR}
	@find ${DOCSDIR} -type d -print0 | xargs -0t chmod ${DIRMODE}
	@find ${DOCSDIR} -type f -print0 | xargs -0t chmod ${DOCMODE}

.include <bsd.port.mk>
