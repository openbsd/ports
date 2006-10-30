# $OpenBSD: Makefile,v 1.102 2006/10/30 11:01:58 bernd Exp $

COMMENT=		"XML parsing library"
COMMENT-python=		"Python bindings for libxml"

VERSION=		2.6.26
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}
PKGNAME-python=		py-libxml-${VERSION}p0
SHARED_LIBS=		xml2	9.3
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

MULTI_PACKAGES=
SUBPACKAGE?=

.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
WANTLIB+=		c
.endif

.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+=	-python
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-python"
MODULES+=		lang/python
.    if defined(PACKAGING)
LIB_DEPENDS=		xml2.>=9::textproc/libxml
.    endif
.  endif
CONFIGURE_ENV=		PYTHON=${MODPY_BIN}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxml2/ \
			DEVHELP_DIR=${PREFIX}/share/doc/libxml2/html/devhelp
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
		${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

.include <bsd.port.mk>

.if ${FLAVOR:L:Mno_python} || ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--without-python
.else
CONFIGURE_ARGS+=	--with-python
.endif
