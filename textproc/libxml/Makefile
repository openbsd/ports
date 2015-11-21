# $OpenBSD: Makefile,v 1.161 2015/11/21 08:46:43 ajacoutot Exp $

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

REVISION-main=		4
REVISION-python=	0

MASTER_SITES0=		https://git.gnome.org/browse/libxml2/patch/?id=
PATCH_DIST_STRIP=	-p1
DIST_SUBDIR=		libxml2
CVE_TAGS=		51f02b0a03ea1fa6c65b3f9fd88cf60fb5803783 \
			f65128f38289d77ff322d63aef2858cc0a819c34 \
			a7dfab7411cbf545f359dd3157e5df1eb0e7ce31 \
			9b8512337d14c8ddf662fcb98b0135f225a1c489 \
			213f1fe0d76d30eaed6e5853057defc43e6df2c9 \
			bd0526e66a56e75a18da8c15c4750db8f801c52d \
			41ac9049a27f52e7a1f3b341f8714149fc88d450 \
			f0709e3ca8f8947f2d91ed34e92e38a4c23eae63 \
			afd27c21f6b36e22682b7da20d726bce2dcb2f43 \
			6360a31a84efe69d155ed96306b9a931a40beab9 \
			69030714cde66d525a8884bda01b9e8f0abf8e1e \
			28cd9cb747a94483f4aea7f0968d202c20bb4cfc \
			35bcb1d758ed70aa7b257c9c3b3ff55e54e3d0da \
			f1063fdbe7fa66332bbb76874101c2a7b51b519f \
			8fb4a770075628d6441fb17a1e435100e2f3b1a2
.for p in ${CVE_TAGS}
PATCHFILES +=		${p}:0
.endfor

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
