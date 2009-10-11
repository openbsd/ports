# $OpenBSD: Makefile,v 1.122 2009/10/11 10:39:42 steven Exp $

COMMENT-main=		XML parsing library
COMMENT-python=		Python bindings for libxml

VERSION=		2.7.6
DISTNAME=		libxml2-${VERSION}
PKGNAME-main=		libxml-${VERSION}
PKGNAME-python=		py-libxml-${VERSION}
SHARED_LIBS=		xml2	11.0
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/libxml/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.7/}

HOMEPAGE=		http://xmlsoft.org/ 

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m z 

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ARGS+=	--with-html-subdir="libxml2/html"
CONFIGURE_ARGS+=	--with-iconv="${DEPBASE}"
# only used to fetch data during regression test
CONFIGURE_ENV=		WGET=/usr/bin/ftp

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main

WANTLIB-main=		${WANTLIB} c
RUN_DEPENDS-main=

.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+=	-python
MODULES+=		lang/python
LIB_DEPENDS-python=	xml2.>=11::textproc/libxml,-main \
			${MODPY_LIB_DEPENDS} \
			${MODLIBICONV_LIB_DEPENDS}
WANTLIB-python=		m z util
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxml2/
.endif

CONFIGURE_ARGS+=	--without-threads
REGRESS_DEPENDS=	::devel/gmake

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/
.if !${FLAVOR:Mno_python}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.endif

do-regress:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${GMAKE} \
		${ALL_REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

.include <bsd.port.mk>

.if ${FLAVOR:L:Mno_python} || ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--without-python
.else
CONFIGURE_ARGS+=	--with-python
.endif
