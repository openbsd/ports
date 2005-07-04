# $OpenBSD: Makefile,v 1.7 2005/07/04 22:22:00 alek Exp $

COMMENT=	"subversion revision control system"
COMMENT-perl=	"perl interface to subversion"
COMMENT-python=	"python interface to subversion"

VERSION=	1.2.0
DISTNAME=	subversion-${VERSION}
PKGNAME=	${DISTNAME}
PKGNAME-perl=	p5-SVN-${VERSION}
PKGNAME-python=	py-subversion-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://subversion.tigris.org/

MAINTAINER=	Sigfred Haversen <bsdlist@mumak.com>

# BSD alike + Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		apr-1 db z

MASTER_SITES=	${HOMEPAGE}/tarballs/

PSEUDO_FLAVORS=	no_bindings
FLAVOR?=

PYTHON_VER=	2.3
SUBST_VARS=	PYTHON_VER

MODULES=	devel/gettext

LIB_DEPENDS=	neon.24:neon->=0.24.7:net/neon \
		aprutil-1.0::devel/apr-util \
		expat.4::textproc/expat

.if !${FLAVOR:L:Mno_bindings}
MULTI_PACKAGES=	-perl -python
SUBPACKAGE?=

.  if defined(PACKAGING) && !empty(SUBPACKAGE)
SHARED_ONLY=	Yes
LIB_DEPENDS=	svn_diff-1,svn_ra-1,svn_delta-1,svn_subr-1,svn_fs-1,svn_repos-1,svn_wc-1,svn_client-1::devel/subversion \
		expat.4::textproc/expat
WANTLIB+=	aprutil-1

.    if ${SUBPACKAGE} == "-python"
RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=	svn_fs_fs-1 svn_ra_svn-1 svn_ra_local-1 neon xml2 m ssl \
		svn_fs_base-1 crypto svn_ra_dav-1
.    endif
.  endif

.  if !defined(PACKAGING)
BUILD_DEPENDS=	::lang/python/${PYTHON_VER} \
		::devel/swig
.  endif
.endif

.if defined(PACKAGING) && empty(SUBPACKAGE)
WANTLIB+=	crypto m ssl xml2 c
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

REGRESS_DEPENDS=::lang/python/${PYTHON_VER} \
		::devel/p5-IO-String
REGRESS_FLAGS=	LD_LIBRARY_PATH=`find ${WRKBUILD} -name .libs | tr '\012' :`

pre-build: 
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKBUILD}/Makefile
	@perl -pi -e "s,!!WRKBUILD!!,${WRKBUILD}," ${WRKBUILD}/Makefile

.if !${FLAVOR:L:Mno_bindings}
post-build: 
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-pl

post-install:
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-pl

post-regress:
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} ${REGRESS_FLAGS} check FSTYPE=bdb
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} ${REGRESS_FLAGS} check-swig-pl
.endif

.include <bsd.port.mk>
