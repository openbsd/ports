# $OpenBSD: Makefile,v 1.12 2005/11/04 09:42:31 alek Exp $

COMMENT=	"subversion revision control system"
COMMENT-perl=	"perl interface to subversion"
COMMENT-python=	"python interface to subversion"

VERSION=	1.2.3
DISTNAME=	subversion-${VERSION}
PKGNAME=	${DISTNAME}p0
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
LIB_DEPENDS+=	svn_diff-1,svn_ra-1,svn_delta-1,svn_subr-1,svn_fs-1,svn_repos-1,svn_wc-1,svn_client-1,svn_fs_fs-1,svn_ra_svn-1,svn_ra_local-1,svn_fs_base-1,svn_ra_dav-1::devel/subversion
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

REGRESS_DEPENDS=::lang/python/${PYTHON_VER} \
		::devel/p5-IO-String
REGRESS_FLAGS=	LD_LIBRARY_PATH=`find ${WRKBUILD} -name .libs | tr '\012' :`

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE}," ${WRKSRC}/configure
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE}," ${WRKSRC}/configure.in

pre-build: 
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKBUILD}/Makefile
	@perl -pi -e "s,!!WRKBUILD!!,${WRKBUILD}," ${WRKBUILD}/Makefile

.if !${FLAVOR:L:Mno_bindings}
post-build: 
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} swig-pl

post-regress:
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} ${REGRESS_FLAGS} check FSTYPE=bdb
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} ${REGRESS_FLAGS} check-swig-pl
.endif

post-install:
.if !${FLAVOR:L:Mno_bindings}
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-py
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} install-swig-pl
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
