# $OpenBSD: Makefile,v 1.38 2007/07/27 19:17:11 naddy Exp $

COMMENT-main=	"subversion revision control system"
COMMENT-perl=	"perl interface to subversion"
COMMENT-python=	"python interface to subversion"
COMMENT-ruby=	"ruby interface to subversion"
COMMENT-ap2=	"apache2 subversion modules"

VERSION=	1.4.4
DISTNAME=	subversion-${VERSION}
PKGNAME=	${DISTNAME}
PKGNAME-main=	${DISTNAME}
PKGNAME-perl=	p5-SVN-${VERSION}
PKGNAME-python=	py-subversion-${VERSION}
PKGNAME-ruby=	ruby-subversion-${VERSION}p0
PKGNAME-ap2=	ap2-subversion-${VERSION}

SO_VERSION=	1.0
SVN_LIBS=	svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 \
		svn_fs_base-1 svn_fs_fs-1 svn_ra-1 svn_ra_dav-1 \
		svn_ra_local-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1
.for _lib in ${SVN_LIBS} svn_swig_perl-1 svn_swig_py-1 svn_swig_ruby-1
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	devel

HOMEPAGE=	http://subversion.tigris.org/

MAINTAINER=	Sigfred Haversen <bsdlist@mumak.com>

# BSD alike + Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/tarballs/

PSEUDO_FLAVORS=	no_bindings no_ap2
FLAVOR?=

PYTHON_VER=	2.4

SUBST_VARS=	PYTHON_VER

MODULES=	devel/gettext

WANTLIB=	apr-1 expat db z

LIB_DEPENDS=	neon.>=24:neon->=0.24.7:net/neon \
		aprutil-1::devel/apr-util

MULTI_PACKAGES=	-main

WANTLIB-main=	${WANTLIB} c crypto m ssl xml2
RUN_DEPENDS-main= ${MODGETTEXT_RUN_DEPENDS}

.if !${FLAVOR:L:Mno_ap2}
MULTI_PACKAGES+=	-ap2
WANTLIB-ap2=		${WANTLIB} iconv aprutil-1 expat
LIB_DEPENDS-ap2=	${MODGETTEXT_LIB_DEPENDS}
.  for _lib in svn_delta-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 \
	svn_repos-1 svn_subr-1
LIB_DEPENDS-ap2+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
BUILD_DEPENDS+=		::www/apache-httpd
RUN_DEPENDS-ap2=	::www/apache-httpd
.  endfor
.endif

.if !${FLAVOR:L:Mno_bindings}
MULTI_PACKAGES+=-perl -python -ruby
SHARED_ONLY=	Yes

WANTLIB-perl=	${WANTLIB} aprutil-1
RUN_DEPENDS-perl=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-perl=	${MODGETTEXT_LIB_DEPENDS}
.  for _lib in svn_diff-1 svn_ra-1 svn_delta-1 svn_subr-1 svn_fs-1 \
	svn_repos-1 svn_wc-1 svn_client-1
LIB_DEPENDS-perl+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

WANTLIB-python=	${WANTLIB} crypto m ssl neon xml2 aprutil-1
RUN_DEPENDS-python=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
LIB_DEPENDS-python=	python${PYTHON_VER}:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
			${MODGETTEXT_LIB_DEPENDS}
.  for _lib in ${SVN_LIBS}
LIB_DEPENDS-python+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

WANTLIB-ruby=	${WANTLIB} crypto expat m ssl neon xml2 aprutil-1
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
LIB_DEPENDS-ruby=	${MODGETTEXT_LIB_DEPENDS}
.  for _lib in ${SVN_LIBS}
LIB_DEPENDS-ruby+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

MODULES+=	lang/ruby
BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		::devel/swig
.endif

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON2=${LOCALBASE}/bin/python${PYTHON_VER}
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-neon=${LOCALBASE} \
		--with-apr=${LOCALBASE} \
		--with-apr-util=${LOCALBASE} \
		--with-zlib \
		--without-jdk
.if !${FLAVOR:L:Mno_bindings}
CONFIGURE_ARGS+=--enable-swig-bindings=perl,python,ruby \
		--with-swig=${LOCALBASE}
.else
CONFIGURE_ARGS+=--disable-swig-bindings \
		--without-swig
.endif

.if !${FLAVOR:L:Mno_ap2}
CONFIGURE_ARGS+=--with-apxs=${LOCALBASE}/sbin/apxs2
.else
CONFIGURE_ARGS+=--without-apxs
.endif

REGRESS_DEPENDS=::lang/python/${PYTHON_VER}

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE}," ${WRKSRC}/configure
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKSRC}/configure

pre-build:
	@perl -pi -e "s,!!PYTHON_VER!!,${PYTHON_VER}," ${WRKBUILD}/Makefile

.if !${FLAVOR:L:Mno_bindings}
REGRESS_DEPENDS+=	::devel/p5-IO-String \
			:${PKGNAME-python}:devel/subversion,-python \
			:${PKGNAME-ruby}:devel/subversion,-ruby

post-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-rb

do-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check FS_TYPE=bdb
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check FS_TYPE=fsfs
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} TMPDIR=${WRKBUILD} check-swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check-swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${REGRESS_FLAGS} check-swig-rb
.endif

post-install:
.if !${FLAVOR:L:Mno_bindings}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} install-swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} install-swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} install-swig-rb
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/enforcer
	${INSTALL_DATA} ${FILESDIR}/config \
			${PREFIX}/share/examples/subversion/config
	${INSTALL_DATA} ${WRKBUILD}/tools/backup/hot-backup.py \
			${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA} ${WRKSRC}/tools/server-side/svn-backup-dumps.py \
			${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA} ${WRKSRC}/contrib/server-side/svn-fast-backup \
			${PREFIX}/share/examples/subversion/backup/svn-fast-backup
	${INSTALL_DATA} ${WRKBUILD}/tools/hook-scripts/* \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/enforcer/* \
			${PREFIX}/share/examples/subversion/hook-scripts/enforcer
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/check-case-insensitive.* \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/detect-merge-conflicts.sh \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/README \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/commit-access-control.cfg.example \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/commit-email.rb \
			${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/log-police.py \
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
