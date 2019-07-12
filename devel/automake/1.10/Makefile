# $OpenBSD: Makefile,v 1.21 2019/07/12 20:44:04 sthen Exp $

VERSION=	1.10
DISTNAME=	automake-${VERSION}.3
REVISION=	9
PKGSPEC=	automake->=${VERSION},<1.11

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

AUTOCONF_VERSION=	2.65

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--infodir=${PREFIX}/info
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

MAKE_FLAGS+=		pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}
FAKE_FLAGS=		docdir=${PREFIX}/share/doc/automake${SUFFIX}

TEST_DEPENDS=	${BASE_PKGPATH} \
			${MODPY_RUN_DEPENDS} \
			devel/libtool \
			devel/gmake \
			archivers/bzip2 \
			devel/bison \
			emacs->=24:editors/emacs \
			devel/dejagnu

TEST_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			MAKE=${GMAKE}

do-test:
	    ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	    @cd ${WRKBUILD} && \
	    	exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		    ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
		    -f ${MAKE_FILE} ${TEST_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info
	perl -pi -e "s,automake\: \(automake\),automake-1\.10\: \(automake-1\.10\)," \
		${PREFIX}/info/automake${SUFFIX}.info
	perl -pi -e "s,aclocal\: \(automake\),aclocal: \(automake-1\.10\)," \
		${PREFIX}/info/automake${SUFFIX}.info

.for f in info-1 info-2
	cd ${PREFIX}/info && mv automake.${f} automake${SUFFIX}.${f} \
		&& perl -pi -e "s,automake.${f},automake${SUFFIX}.${f}," \
		${PREFIX}/info/automake${SUFFIX}.info
.endfor

.include <bsd.port.mk>
