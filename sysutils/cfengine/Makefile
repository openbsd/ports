# $OpenBSD: Makefile,v 1.61 2019/07/12 20:49:40 sthen Exp $

BROKEN =	pkg_add fails: problem with symlinks

COMMENT =	GNU system administration tool for networks

DISTNAME =	cfengine-3.7.2
REVISION =	3

SHARED_LIBS +=  promises	0.0 # 1.0
CATEGORIES =	sysutils
HOMEPAGE =	http://cfengine.com/

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto iconv lzma m pam pcre pthread ssl qdbm xml2 z

MASTER_SITES =	https://cfengine-package-repos.s3.amazonaws.com/tarballs/

CFENGINE_BASE =		/var/cfengine
CFENGINE_EXAMPLES =	${PREFIX}/share/examples/cfengine
SUBST_VARS +=		CFENGINE_BASE CFENGINE_EXAMPLES

FLAVORS =		pgsql mysql 
FLAVOR ?=

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes
LIB_DEPENDS =		converters/libiconv \
			databases/qdbm \
			devel/pcre \
			security/openpam \
			textproc/libxml
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--with-openssl=/usr \
			--without-libacl \
			--without-libvirt \
			--with-libxml2 \
			--without-libyaml \
			--without-lmdb \
			--with-pam \
			--with-pcre \
			--with-qdbm \
			--without-tokyocabinet \
			--disable-fhs \
			--with-workdir=${CFENGINE_BASE}
MAKE_FLAGS +=		examplesdir="${CFENGINE_EXAMPLES}" \
			masterfilesdir="${CFENGINE_EXAMPLES}/CoreBase"

.if ${FLAVOR:Mpgsql}
WANTLIB +=		pq
CONFIGURE_ARGS +=	--with-postgresql
LIB_DEPENDS +=		databases/postgresql
.else
CONFIGURE_ARGS +=	--without-postgresql
.endif

.if ${FLAVOR:Mmysql}
WANTLIB +=		mysqlclient_r
CONFIGURE_ARGS +=	--with-mysql
LIB_DEPENDS +=		databases/mariadb
.else
CONFIGURE_ARGS +=	--without-mysql
.endif


# tests not yet working
NO_TEST =		Yes
# also note some formatting errors with manpages (e.g. "You can think
# of.B cfengine as..." and poor formatting in INFORMATION sections;
# these are present with either mandoc or groff.

post-extract:
	perl -i -pe \
		's|^sbin_PROGRAMS.*rpmvercmp||;' \
		${WRKDIST}/ext/Makefile.in

post-install:
	${INSTALL_PROGRAM_DIR} ${WRKINST}${CFENGINE_BASE}/bin
.for i in cf-agent cf-execd cf-key cf-monitord cf-promises cf-upgrade \
          cf-runagent cf-serverd
	ln -s ${TRUEPREFIX}/bin/$i ${WRKINST}${CFENGINE_BASE}/bin/
.endfor

.include <bsd.port.mk>
