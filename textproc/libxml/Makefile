# $OpenBSD: Makefile,v 1.101 2006/08/03 23:55:11 espie Exp $

COMMENT=		"XML parsing library"
COMMENT-python=		"Python bindings for libxml"

VERSION=		2.6.26
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}
PKGNAME-python=		py-libxml-${VERSION}
SHARED_LIBS=		xml2	9.3
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/libxml/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.6/}

HOMEPAGE=		http://xmlsoft.org/ 

#FAKE=			all
# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z 

PSEUDO_FLAVORS=		python
FLAVOR?=

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ARGS+=	--with-html-subdir="libxml2/html"
CONFIGURE_ARGS+=	--with-iconv="${DEPBASE}"

.if ${FLAVOR:Mpython}
SHARED_ONLY=		Yes

MULTI_PACKAGES=		-python
SUBPACKAGE?=

.  if !defined(PACKAGING) || !empty(SUBPACKAGE)
MODULES+=		lang/python
.  endif
CONFIGURE_ENV=		PYTHON=${MODPY_BIN}

CONFIGURE_ARGS+=	--with-python
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxml2/ \
			DEVHELP_DIR=${PREFIX}/share/doc/libxml2/html/devhelp

.  if defined(PACKAGING) && !empty(SUBPACKAGE)
LIB_DEPENDS=		xml2.>=9::textproc/libxml
WANTLIB=		m z
.  endif
.else
CONFIGURE_ARGS+=	--without-python
.endif
CONFIGURE_ARGS+=	--without-threads

REGRESS_DEPENDS=	::devel/gmake

SUBST_VARS=		VERSION

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/
.if ${FLAVOR:Mpython}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.endif

do-regress:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${GMAKE} \
		${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

# XXX let's cheat
#post-configure:
#	@perl -pi.bak -e \
#		's,${DEPBASE}/include,\$$\{includedir\},g; \
#		 s,${DEPBASE}/lib,\$$\{libdir\},g; \
#		 s,${DEPBASE}/,\$$\{prefix\}/,g;' \
#	    ${WRKBUILD}/libxml-2.0.pc ${WRKBUILD}/xml2-config

#post-install:
#	perl -pi.bak -e \
#		'print ": \$${DEPBASE:=${LOCALBASE}}\n" if m/^dlname/; \
#		 s,dependency_libs='\''(.*)'\'',dependency_libs=\"$$1\",g; \
#		 s,${DEPBASE},\$$\{DEPBASE\},g; \
#		 s,${TRUEPREFIX}(/lib/.*?\.la),\$$\{DEPBASE\}$$1,g;' \
#	    ${PREFIX}/lib/libxml2.la


.include <bsd.port.mk>
