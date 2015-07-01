# $OpenBSD: Makefile,v 1.158 2015/07/01 11:26:55 ajacoutot Exp $

COMMENT-main=		XML parsing library
COMMENT-python=		Python bindings for libxml

VERSION=		2.9.2
DISTNAME=		libxml2-${VERSION}
PKGNAME-main=		libxml-${VERSION}
PKGNAME-python=		py-libxml-${VERSION}
SHARED_LIBS +=	xml2                 15.1     # 11.2
CATEGORIES=		textproc
MASTER_SITES=		http://gd.tuwien.ac.at/pub/libxml/ \
			ftp://xmlsoft.org/libxml/

HOMEPAGE=		http://xmlsoft.org/

REVISION-main=		1
REVISION-python=	0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		lzma m z

MODULES=		converters/libiconv
LIB_DEPENDS=		archivers/xz

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-html-dir="${PREFIX}/share/doc" \
			--with-html-subdir="libxml2/html" \
			--with-iconv="${DEPBASE}" \
			--without-threads
# only used to fetch data during regression test
CONFIGURE_ENV=		WGET=/usr/bin/ftp

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python

WANTLIB-main=		${WANTLIB} c pthread
RUN_DEPENDS-main=
NOT_FOR_ARCHS-python =	${NO_SHARED_ARCHS}

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
LIB_DEPENDS-python=	textproc/libxml,-main=${VERSION} \
			${MODPY_LIB_DEPENDS} \
			${MODLIBICONV_LIB_DEPENDS}
WANTLIB-python=		${WANTLIB} ${MODPY_WANTLIB} ${MODLIBICONV_WANTLIB} \
			pthread util xml2>=11
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/libxml2
CONFIGURE_ARGS+=	--with-python
.else
CONFIGURE_ARGS+=	--without-python
.endif

TEST_DEPENDS=		devel/gmake

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/
.if ${BUILD_PACKAGES:M-python}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.endif

do-test:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${GMAKE} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
