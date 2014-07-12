# $OpenBSD: Makefile,v 1.46 2014/07/12 11:25:00 sthen Exp $

COMMENT =	GNU system administration tool for networks

DISTNAME =	cfengine-3.4.5
REVISION =	0

SHARED_LIBS +=  promises	0.0 # 1.0
CATEGORIES =	sysutils
HOMEPAGE =	http://cfengine.com/

MAINTAINER =	Martijn Rijkeboer <martijn@bunix.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://s3.amazonaws.com/cfengine.package-repos/tarballs/

CFENGINE_BASE =		/var/cfengine
CFENGINE_EXAMPLES =	${PREFIX}/share/examples/cfengine
SUBST_VARS +=		CFENGINE_BASE CFENGINE_EXAMPLES

FLAVORS =		pgsql
FLAVOR ?=

WANTLIB =		c crypto m pcre pthread qdbm
CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes
LIB_DEPENDS =		databases/qdbm \
			devel/pcre
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--with-openssl=/usr \
			--with-pcre \
			--with-qdbm \
			--without-libxml2 \
			--without-libvirt \
			--enable-fhs \
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
LIB_DEPENDS +=		databases/mysql
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
.for i in cf-agent cf-execd cf-key cf-monitord cf-promises cf-report cf-runagent cf-serverd
	ln -s ${TRUEPREFIX}/sbin/$i ${WRKINST}${CFENGINE_BASE}/bin/
.endfor

.include <bsd.port.mk>
