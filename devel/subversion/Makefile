# $OpenBSD: Makefile,v 1.19 2006/06/04 00:21:58 steven Exp $

COMMENT=	"subversion revision control system"
COMMENT-perl=	"perl interface to subversion"
COMMENT-python=	"python interface to subversion"

VERSION=	1.3.1
DISTNAME=	subversion-${VERSION}
PKGNAME-perl=	p5-SVN-${VERSION}
PKGNAME-python=	py-subversion-${VERSION}p0
SHARED_LIBS=	svn_client-1	0.0	\
		svn_delta-1	0.0	\
		svn_diff-1	0.0	\
		svn_fs-1	0.0	\
		svn_fs_base-1	0.0	\
		svn_fs_fs-1	0.0	\
		svn_ra-1	0.0	\
		svn_ra_dav-1	0.0	\
		svn_ra_local-1	0.0	\
		svn_ra_svn-1	0.0	\
		svn_repos-1	0.0	\
		svn_subr-1	0.0	\
		svn_swig_perl-1	0.0	\
		svn_swig_py-1	0.0	\
		svn_wc-1	0.0

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

PYTHON_VER=	2.4
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
LIB_DEPENDS+=	svn_diff-1,svn_ra-1,svn_delta-1,svn_subr-1,svn_fs-1,svn_repos-1,svn_wc-1,svn_client-1,svn_fs_fs-1,svn_ra_svn-1,svn_ra_local-1,svn_fs_base-1,svn_ra_dav-1::devel/subversion
LIB_DEPENDS+=	python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=	neon xml2 m ssl crypto
.    endif
.  endif

.  if !defined(PACKAGING)
BUILD_DEPENDS=	::lang/python/${PYTHON_VER} \
		::devel/swig
.  endif
.endif

.if defined(PACKAGING) && (!defined(SUBPACKAGE) || empty(SUBPACKAGE))
WANTLIB+=	crypto m ssl xml2 c
.endif

USE_LIBTOOL=	Yes
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

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE}," ${WRKSRC}/configure
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKSRC}/configure

pre-build: 
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKBUILD}/Makefile

.if !${FLAVOR:L:Mno_bindings}
REGRESS_DEPENDS+=	::devel/p5-IO-String \
			::devel/subversion,-python

post-build: 
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-pl

post-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check FSTYPE=bdb
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} TMPDIR=${WRKBUILD} check-swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check-swig-py
.endif

post-install:
.if !${FLAVOR:L:Mno_bindings}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} install-swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} install-swig-pl
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests
	${INSTALL_DATA} ${WRKBUILD}/tools/backup/hot-backup.py \
			${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA} ${WRKBUILD}/tools/hook-scripts/* \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/README \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/commit-access-control.cfg.example \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/commit-email.rb \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/svnperms.conf.example \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/svnperms.py \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.conf.example \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.py \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/tests/* \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests

.include <bsd.port.mk>
