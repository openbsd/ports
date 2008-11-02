# $OpenBSD: Makefile,v 1.49 2008/11/02 20:43:49 steven Exp $

COMMENT-main=	subversion revision control system
COMMENT-perl=	perl interface to subversion
COMMENT-python=	python interface to subversion
COMMENT-ruby=	ruby interface to subversion
COMMENT-ap2=	apache2 subversion modules

VERSION=	1.5.4
DISTNAME=	subversion-${VERSION}
PKGNAME=	${DISTNAME}
PKGNAME-main=	${DISTNAME}
PKGNAME-perl=	p5-SVN-${VERSION}
PKGNAME-python=	py-subversion-${VERSION}
PKGNAME-ruby=	ruby-subversion-${VERSION}
PKGNAME-ap2=	ap2-subversion-${VERSION}

SO_VERSION=	1.1
SVN_LIBS=	svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 \
		svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_neon-1 \
		svn_ra_local-1 svn_ra_neon-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1
.for _lib in ${SVN_LIBS} svn_swig_perl-1 svn_swig_py-1 svn_swig_ruby-1
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	devel

HOMEPAGE=	http://subversion.tigris.org/

MAINTAINER=	Stefan Sperling <stsp@stsp.name>

# BSD alike + Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/tarballs/

PSEUDO_FLAVORS=	no_bindings no_ap2
FLAVOR?=

MODULES=	devel/gettext

WANTLIB=	expat db z

LIB_DEPENDS=	neon.>=26:neon->=0.26.2:net/neon \
		apr-1::devel/apr \
		aprutil-1::devel/apr-util \
		sasl2.>=2::security/cyrus-sasl2

MULTI_PACKAGES=	-main

WANTLIB-main=	${WANTLIB} c crypto iconv intl ssl
RUN_DEPENDS-main= ${MODGETTEXT_RUN_DEPENDS}

CONTRIB_HOOK_SCRIPTS=	case-insensitive.py pre-commit-check.py \
	check-mime-type.pl pre-lock-require-needs-lock.py \
	commit-block-joke.py remove-zombie-locks.py detect-merge-conflicts.sh \
	syntax-check.sh
# There's also 'enforcer', but it has its own subdir in contrib/hook-scripts/
# So we handle it separately, see post-install

TOOLS_HOOK_SCRIPTS=	commit-access-control.cfg.example \
	commit-access-control.pl svn2feed.py commit-access-control.pl.in \
	svnperms.conf.example commit-email.pl svnperms.py commit-email.pl.in \
	verify-po.py commit-email.rb
# There's also 'mailer', but it has its own subdir in contrib/hook-scripts/
# So we handle it separately, see post-install

.if !${FLAVOR:L:Mno_ap2}
MULTI_PACKAGES+=	-ap2
WANTLIB-ap2=		${WANTLIB} apr-1 aprutil-1 expat
LIB_DEPENDS-ap2=	${MODGETTEXT_LIB_DEPENDS}
.  for _lib in svn_delta-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 \
	svn_fs_util-1 svn_repos-1 svn_subr-1
LIB_DEPENDS-ap2+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor
BUILD_DEPENDS+=		::www/apache-httpd
RUN_DEPENDS-ap2=	::www/apache-httpd
.endif

.if !${FLAVOR:L:Mno_bindings}
MULTI_PACKAGES+=-perl -python -ruby
SHARED_ONLY=	Yes

WANTLIB-perl=	${WANTLIB} apr-1 aprutil-1
RUN_DEPENDS-perl=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-perl=	${MODGETTEXT_LIB_DEPENDS}
.  for _lib in svn_diff-1 svn_ra-1 svn_delta-1 svn_subr-1 svn_fs-1 \
	svn_repos-1 svn_wc-1 svn_client-1
LIB_DEPENDS-perl+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

WANTLIB-python=	${WANTLIB} apr-1 aprutil-1 crypto neon sasl2 ssl
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS} ${MODGETTEXT_LIB_DEPENDS}
.  for _lib in ${SVN_LIBS}
LIB_DEPENDS-python+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

WANTLIB-ruby=	${WANTLIB} apr-1 aprutil-1 crypto neon sasl2 ssl
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
LIB_DEPENDS-ruby=	ruby.>=2::lang/ruby ${MODGETTEXT_LIB_DEPENDS}
.  for _lib in ${SVN_LIBS}
LIB_DEPENDS-ruby+=	${_lib}.>=${SO_VERSION}:subversion-${VERSION}:devel/subversion,-main
.  endfor

MODULES+=	lang/ruby lang/python
BUILD_DEPENDS+=	:swig->=1.3.36:devel/swig
.endif

# BSD make cannot build target autogen-swig to regenerate bindings
USE_GMAKE=	Yes
MAKE_FLAGS=	MAKE=${MAKE_PROGRAM}
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.62
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	PYTHON2=${MODPY_BIN}
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--without-jikes \
		--without-jdk
.if !${FLAVOR:L:Mno_bindings}
CONFIGURE_ARGS+=--with-swig
.else
CONFIGURE_ARGS+=--without-swig
.endif

.if !${FLAVOR:L:Mno_ap2}
CONFIGURE_ARGS+=--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--disable-mod-activation
.else
CONFIGURE_ARGS+=--without-apxs
.endif

REGRESS_DEPENDS=::lang/python/${MODPY_VERSION}
MODPY_VERSION?=	2.5
SUBST_VARS=	LOCALBASE

pre-patch:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/Makefile.in ${WRKSRC}/configure.ac
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

.if !${FLAVOR:L:Mno_bindings}
REGRESS_DEPENDS+=	:${PKGNAME-python}:devel/subversion,-python \
			:${PKGNAME-ruby}:devel/subversion,-ruby

pre-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} clean-swig

post-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-rb

do-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} check FS_TYPE=bdb
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} check FS_TYPE=fsfs
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} TMPDIR=${WRKBUILD} check-swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} check-swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS} check-swig-rb
.endif

post-install:
.if !${FLAVOR:L:Mno_bindings}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-py
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-pl
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-rb
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
			${PREFIX}/share/examples/subversion/backup/
	${INSTALL_DATA} ${WRKSRC}/tools/server-side/svn-backup-dumps.py \
			${PREFIX}/share/examples/subversion/backup/
	${INSTALL_DATA} ${WRKSRC}/contrib/server-side/svn-fast-backup \
			${PREFIX}/share/examples/subversion/backup/svn-fast-backup
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/enforcer/enforcer \
			${PREFIX}/share/examples/subversion/hook-scripts/enforcer/
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/enforcer/enforcer.conf \
			${PREFIX}/share/examples/subversion/hook-scripts/enforcer/
.for hook_script in ${CONTRIB_HOOK_SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/contrib/hook-scripts/${hook_script} \
			${PREFIX}/share/examples/subversion/hook-scripts/
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/README \
			${PREFIX}/share/examples/subversion/hook-scripts/
.for hook_script in ${TOOLS_HOOK_SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/${hook_script} \
			${PREFIX}/share/examples/subversion/hook-scripts/
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.conf.example \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.py \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/tests/* \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests
	find ${PREFIX}/share/examples/subversion -type f | xargs perl -pi \
		-e "s,.*/usr/bin/python.*,#!${MODPY_BIN},;" \
		-e "s,.*env python.*,#!${MODPY_BIN},;"

.include <bsd.port.mk>
