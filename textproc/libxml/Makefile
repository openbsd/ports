# $OpenBSD: Makefile,v 1.112 2008/04/01 11:36:24 jasper Exp $

COMMENT-main=		XML parsing library
COMMENT-python=		Python bindings for libxml

VERSION=		2.6.30
DISTNAME=		libxml2-${VERSION}
PKGNAME-main=		libxml-${VERSION}p0
PKGNAME-python=		py-libxml-${VERSION}p1
SHARED_LIBS=		xml2	9.7
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/libxml/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.6/}

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

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main

WANTLIB-main=		${WANTLIB} c
RUN_DEPENDS-main=

.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+=	-python
MODULES+=		lang/python
LIB_DEPENDS-python=	xml2.>=9::textproc/libxml,-main \
			${MODLIBICONV_LIB_DEPENDS}
CONFIGURE_ENV=		PYTHON=${MODPY_BIN}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxml2/ \
			DEVHELP_DIR=${PREFIX}/share/doc/libxml2/html/devhelp
.endif

CONFIGURE_ARGS+=	--without-threads
BUILD_DEPENDS+= 	::net/wget
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
