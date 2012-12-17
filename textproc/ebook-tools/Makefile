# $OpenBSD: Makefile,v 1.5 2012/12/17 16:06:52 espie Exp $

V =			0.2.1
REVISION =		0
COMMENT =		accessing and converting various ebook file formats
DISTNAME =		ebook-tools-${V}

SHARED_LIBS +=		epub		0.0	# 0.2

CATEGORIES =		textproc devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c xml2 zip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ebook-tools/${V}/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/doxygen \
			math/graphviz
LIB_DEPENDS =		textproc/libxml \
			archivers/libzip \

SEPARATE_BUILD =	Yes
NO_REGRESS =		Yes

MAKE_ENV=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}

DOCSDIR =		${PREFIX}/share/doc/ebook-tools

post-build:
	cd ${WRKBUILD} && ${MAKE_ENV} make doc

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cp -R ${WRKBUILD}/doc/html ${DOCSDIR}
	@find ${DOCSDIR} -type d -print0 | xargs -0t chmod ${DIRMODE}
	@find ${DOCSDIR} -type f -print0 | xargs -0t chmod ${DOCMODE}

.include <bsd.port.mk>
