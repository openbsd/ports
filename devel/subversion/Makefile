# $OpenBSD: Makefile,v 1.182 2020/07/03 21:12:53 sthen Exp $

COMMENT-main=		subversion revision control system
COMMENT-perl=		perl interface to subversion
COMMENT-python=		python interface to subversion
COMMENT-ruby=		ruby interface to subversion
COMMENT-ap2=		apache2 subversion modules
COMMENT-gnome-keyring=	GNOME keyring support for subversion

VERSION=		1.14.0
REVISION=		0
REVISION-python=	1
DISTNAME=		subversion-${VERSION:S/rc/-rc/}
PKGNAME-main=		subversion-${VERSION}
FULLPKGNAME-main=	subversion-${VERSION}${FLAVOR_EXT:S/-python3//}
FULLPKGPATH-main=	devel/subversion,-main${FLAVOR_EXT:S/-python3//:S/-/,/g}
FULLPKGNAME-perl=	p5-SVN-${VERSION}
FULLPKGPATH-perl=	devel/subversion,-perl
FULLPKGNAME-ruby=	ruby${MODRUBY_BINREV}-subversion-${VERSION}
FULLPKGPATH-ruby=	devel/subversion,-ruby
FULLPKGNAME-ap2=	ap2-subversion-${VERSION}
FULLPKGPATH-ap2=	devel/subversion,-ap2
FULLPKGNAME-gnome-keyring= gnome-keyring-subversion-${VERSION}
FULLPKGPATH-gnome-keyring= devel/subversion,-gnome-keyring

MODRUBY_REV ?=	2.7
# Work around for SHARED_LIBS not picking up MODRUBY_BINREV from ruby module
MODRUBY_BINREV=	${MODRUBY_REV:S/.//}

SO_VERSION=	6.0
SVN_LIBS=	svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 \
		svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_fs_x-1 \
		svn_ra-1 svn_ra_serf-1 svn_ra_local-1 \
		svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1
SVN_EXT_LIBS=	svn_swig_perl-1 svn_swig_py-1 svn_swig_ruby${MODRUBY_BINREV}-1 \
		svn_auth_gnome_keyring-1
.for _lib in ${SVN_LIBS} ${SVN_EXT_LIBS}
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

# Work around for PLIST not being to handle dynamic variable names in
# substitutions
LIBsvn_swig_ruby-1_VERSION =	${LIBsvn_swig_ruby${MODRUBY_BINREV}-1_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://subversion.apache.org

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

# BSD alike + Apache License 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=subversion/}
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_bindings no_ap2 no_perl no_python no_ruby no_gnome-keyring
FLAVORS=	maintainer_mode python3
FLAVOR?=
.if ${FLAVOR:Mno_bindings}
FLAVOR += no_perl no_python no_ruby
.endif

.if ${FLAVOR:Mpython3}
FULLPKGNAME-python=	py3-subversion-${VERSION}
FULLPKGPATH-python=	devel/subversion,python3,-python
# py-subversion and py3-subversion both install libsvn_swig_py-1;
# conflict with the other flavour
PY_CONFLICT=		py-subversion-*
.else
FULLPKGNAME-python=	py-subversion-${VERSION}
FULLPKGPATH-python=	devel/subversion,-python
PY_CONFLICT=		py3-subversion-*
.endif

MODULES=	lang/python

WANTLIB=	expat iconv intl lz4 m pthread z

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/py3c

MULTI_PACKAGES = -main -ap2 -perl -python -ruby -gnome-keyring

MAINSPEC =	${PKGNAME}:devel/subversion,-main
LIB_DEPENDS-main = ${LIB_DEPENDS} \
		archivers/lz4 \
		net/serf>=1.3.2 \
		databases/sqlite3 \
		devel/apr \
		devel/apr-util \
		devel/gettext,-runtime \
		security/cyrus-sasl2

WANTLIB-main=	${WANTLIB} apr-1 aprutil-1 db sasl2>=2 serf-1>=1.0 ssl sqlite3 \
		c crypto
RUN_DEPENDS-main=

TOOLS_HOOK_SCRIPTS=	commit-access-control.cfg.example \
	commit-access-control.pl commit-email.rb \
	log-police.py svn2feed.py svnperms.conf.example \
	svnperms.py verify-po.py
# There's also 'mailer', but we handle it separately, see post-install

TOOLS_CLIENT_SIDE_SCRIPTS=	change-svn-wc-format.py \
	mergeinfo-sanitizer.py server-version.py svn-graph.pl \
	svn-ssl-fingerprints.sh svn-vendor.py svn-viewspec.py wcfind

WANTLIB-ap2=		${WANTLIB} apr-1 aprutil-1 db sqlite3 svn_fs_x-1
LIB_DEPENDS-ap2=	${MAINSPEC}
.for _lib in svn_delta-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1 \
	svn_fs_util-1 svn_repos-1 svn_subr-1
WANTLIB-ap2 +=	${_lib}>=${SO_VERSION}
.endfor
RUN_DEPENDS-ap2=	www/apache-httpd

WANTLIB-perl=		${WANTLIB} apr-1 aprutil-1 c perl sqlite3 
RUN_DEPENDS-perl=
LIB_DEPENDS-perl=	${MAINSPEC}
.for _lib in svn_diff-1 svn_ra-1 svn_delta-1 svn_subr-1 svn_fs-1 \
	svn_repos-1 svn_wc-1 svn_client-1
WANTLIB-perl +=	${_lib}>=${SO_VERSION}
.endfor

WANTLIB-python=		${WANTLIB} apr-1 aprutil-1 \
			db m sasl2 serf-1>=1.0 \
			sqlite3 util ${MODPY_WANTLIB}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS} \
			${MAINSPEC}
.for _lib in ${SVN_LIBS}
WANTLIB-python +=	${_lib}>=${SO_VERSION}
.endfor

WANTLIB-ruby=		${WANTLIB} apr-1 aprutil-1 \
			db m sasl2 serf-1>=1.0 sqlite3 \
			${MODRUBY_WANTLIB}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
LIB_DEPENDS-ruby=	${MODRUBY_LIB_DEPENDS} \
			${MAINSPEC}
.for _lib in ${SVN_LIBS}
WANTLIB-ruby +=	${_lib}>=${SO_VERSION}
.endfor

WANTLIB-gnome-keyring=	${WANTLIB} apr-1 aprutil-1 gcrypt gpg-error \
		gio-2.0 glib-2.0 secret-1 pcre>=2 sqlite3 \
		svn_subr-1>=${SO_VERSION} ffi gmodule-2.0 gobject-2.0
LIB_DEPENDS-gnome-keyring= ${MAINSPEC} \
		x11/gnome/libsecret

RUN_DEPENDS-gnome-keyring=

MAKE_FLAGS=	MAKE=${MAKE_PROGRAM}

# Before running ./configure we must run autogen.sh to regenerate Python3 SWIG
# files shipped in the tarball for Python2: https://svn.apache.org/r1877960
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=	PYTHON=${MODPY_BIN} MKDIR="/bin/mkdir -p"
CONFIGURE_ARGS+=--with-sasl=${LOCALBASE} \
		--without-jikes \
		--without-jdk \
		--without-libmagic \
		--with-utf8proc=internal \
		--enable-plaintext-password-storage

# Maintainer mode shows files and line numbers for every error raised
# by Subversion. It is useful for debugging problems with Subversion
# but is not required for normal operation.
.if ${FLAVOR:Mmaintainer_mode}
CONFIGURE_ARGS+=--enable-maintainer-mode
.endif

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ruby} || ${BUILD_PACKAGES:M-perl} || ${BUILD_PACKAGES:M-python}

BUILD_DEPENDS+=	devel/swig>=1.3.36
CONFIGURE_ARGS+=--with-swig
.else
CONFIGURE_ARGS+=--without-swig
.endif

.if ${BUILD_PACKAGES:M-ruby}
MODULES+=	lang/ruby
CONFIGURE_ENV+=	RUBY=ruby${MODRUBY_BINREV} RDOC=rdoc${MODRUBY_BINREV}
.endif

.if ${BUILD_PACKAGES:M-ap2}
CONFIGURE_ARGS+=--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--disable-mod-activation \
		--with-apache-libexecdir=${LOCALBASE}/lib/apache2
BUILD_DEPENDS+=		www/apache-httpd
.else
CONFIGURE_ARGS+=--without-apxs
.endif

.if ${BUILD_PACKAGES:M-gnome-keyring}
CONFIGURE_ARGS+=--with-gnome-keyring
.else
CONFIGURE_ARGS+=--without-gnome-keyring
.endif

TEST_DEPENDS=${MODPY_RUN_DEPENDS}
TEST_DEPENDS+=	${FULLPKGNAME-gnome-keyring}:${BUILD_PKGPATH},-gnome-keyring
SUBST_VARS+=	LOCALBASE SO_VERSION MODRUBY_BINREV
SUBST_VARS+=	LIBsvn_swig_ruby-1_VERSION MODPY_WANTLIB PY_CONFLICT

pre-patch:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-patch:
	@${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/subversion/libsvn_subr/auth.c
	mv ${WRKSRC}/subversion/bindings/swig/ruby/libsvn_swig_ruby{,${MODRUBY_BINREV}}
	sed -i 's/libsvn_swig_ruby/libsvn_swig_ruby${MODRUBY_BINREV}/g' \
		`fgrep -lr libsvn_swig_ruby ${WRKSRC}`

.if ${BUILD_PACKAGES:M-python}
TEST_DEPENDS+=	${FULLPKGNAME-python}:${BUILD_PKGPATH},-python

.if ${BUILD_PACKAGES:M-ruby}
TEST_DEPENDS+=	${FULLPKGNAME-ruby}:${BUILD_PKGPATH},-ruby
.endif

pre-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} clean-swig
.endif

post-build:
.if ${BUILD_PACKAGES:M-python}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-py
.endif
.if ${BUILD_PACKAGES:M-perl}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-pl
.endif
.if ${BUILD_PACKAGES:M-ruby}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} swig-rb
.endif
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} svnmucc
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} svnauthz
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} svn-populate-node-origins-index

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} check FS_TYPE=bdb CLEANUP=1
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} check FS_TYPE=fsfs CLEANUP=1
.if ${BUILD_PACKAGES:M-perl}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} TMPDIR=${WRKBUILD} check-swig-pl
.endif
.if ${BUILD_PACKAGES:M-python}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} check-swig-py
.endif
.if ${BUILD_PACKAGES:M-ruby}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} check-swig-rb
.endif

post-install:
.if ${BUILD_PACKAGES:M-python}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-py
.endif
.if ${BUILD_PACKAGES:M-perl}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-pl
.endif
.if ${BUILD_PACKAGES:M-ruby}
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-swig-rb
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/
	${INSTALL_DATA} ${FILESDIR}/servers \
			${PREFIX}/share/examples/subversion/servers
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/client-side
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/server-side
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/cgi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/client-side/emacs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/client-side/svn2cl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/client-side/svn_load_dirs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/hook-scripts/enforcer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/server-side/mod_dontdothat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/xslt
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} install-tools
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/bdb
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/subversion/xslt
	${INSTALL_DATA} ${WRKBUILD}/tools/backup/hot-backup.py \
			${PREFIX}/share/examples/subversion/backup
	${INSTALL_DATA} ${WRKSRC}/tools/bdb/* \
		${PREFIX}/share/examples/subversion/bdb
	${INSTALL_DATA} ${WRKSRC}/tools/examples/* \
		${PREFIX}/share/examples/subversion
.for _script in ${TOOLS_CLIENT_SIDE_SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/tools/client-side/${_script} \
			${PREFIX}/share/examples/subversion/client-side
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/tools/client-side/bash_completion \
		${PREFIX}/share/bash-completion/completions/subversion
.for _completion in svn svnadmin svndumpfilter svnlook svnsync svnversion
		cd ${PREFIX}/share/bash-completion/completions && \
			ln -sf subversion ${_completion}
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/server-side/fsfs-reshard.py \
			${PREFIX}/share/examples/subversion/server-side
	${INSTALL_DATA} ${WRKSRC}/tools/server-side/svn-backup-dumps.py \
			${PREFIX}/share/examples/subversion/server-side
	${INSTALL_PROGRAM} ${WRKSRC}/tools/server-side/svn-populate-node-origins-index.c \
		${PREFIX}/share/examples/subversion/server-side
	${INSTALL_DATA} ${WRKSRC}/tools/xslt/* \
		${PREFIX}/share/examples/subversion/xslt
.for _hook_script in ${TOOLS_HOOK_SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/${_hook_script} \
			${PREFIX}/share/examples/subversion/hook-scripts/
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.conf.example \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.conf.example \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/mailer.py \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer
	${INSTALL_DATA} ${WRKSRC}/tools/hook-scripts/mailer/tests/* \
			${PREFIX}/share/examples/subversion/hook-scripts/mailer/tests
	find ${PREFIX}/share/examples/subversion -type f -exec sed -Ei \
		-e "s,.*/usr/bin/ruby.*,#!${RUBY}," \
		-e "s,.*env ruby.*,#!${RUBY}," \
		-e "s,.*/usr/bin/python.*,#!${MODPY_BIN}," \
		-e "s,.*env python.*,#!${MODPY_BIN}," \
			{} +
	find ${PREFIX}/share/examples/subversion -type f -name '*.orig' -delete

.include <bsd.port.mk>
