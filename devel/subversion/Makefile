# $OpenBSD: Makefile,v 1.1.1.1 2004/12/01 16:47:54 alek Exp $

COMMENT=	"subversion revision control system"
COMMENT-perl=	"perl interface to subversion"
COMMENT-python=	"python interface to subversion"

VERSION=	1.1.1
DISTNAME=	subversion-${VERSION}
PKGNAME-perl=	p5-SVN-${VERSION}
PKGNAME-python=	py-subversion-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://subversion.tigris.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD alike + Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		apr-1 c crypto db expat m pthread ssl xml2 z

MASTER_SITES=	${HOMEPAGE}/tarballs/

PSEUDO_FLAVORS=	no_bindings
FLAVOR?=

PYTHON_VER=	2.3
SUBST_VARS=	PYTHON_VER

MODULES=	devel/gettext

LIB_DEPENDS=	neon.24:neon->=0.24.7:net/neon \
		aprutil-1.0::devel/apr-util \

.if !${FLAVOR:L:Mno_bindings}
LIB_DEPENDS+=	swigpy.0,swigpl.0::devel/swig
BUILD_DEPENDS=	::lang/python/${PYTHON_VER}

MULTI_PACKAGES=	-perl -python
SUBPACKAGE?=

.  if defined(PACKAGING) && !empty(SUBPACKAGE)
SHARED_ONLY=	Yes
RUN_DEPENDS=	::devel/subversion
LIB_DEPENDS=
MODULES=

.    if ${SUBPACKAGE} == "-python"
RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
.    endif
.  endif
.endif

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON2=${LOCALBASE}/bin/python${PYTHON_VER}
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-neon=${LOCALBASE} \
		--with-apr=${LOCALBASE} \
		--with-apr-util=${LOCALBASE} \
		--with-zlib \
		--without-apache \
		--without-apxs \
		--without-jdk
.if !${FLAVOR:L:Mno_bindings}
CONFIGURE_ARGS+=--enable-swig-bindings=perl,python \
		--with-swig=${LOCALBASE}
.else
CONFIGURE_ARGS+=--disable-swig-bindings \
		--without-swig
.endif

REGRESS_DEPENDS=::lang/python/${PYTHON_VER}
REGRESS_FLAGS=	LD_LIBRARY_PATH=`find ${WRKBUILD} -name .libs | tr '\012' :`

pre-build: 
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKBUILD}/Makefile

.if !${FLAVOR:L:Mno_bindings}
post-build: 
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-pl

post-install:
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-pl
.endif

.include <bsd.port.mk>
