# $OpenBSD: Makefile,v 1.22 2019/07/12 20:43:53 sthen Exp $

COMMENT-main =		"little brother's database", email address query tools
COMMENT-ldap =		LDAP support for lbdb

VERSION =		0.40
REVISION =		0

DISTNAME =		lbdb_${VERSION}
PKGNAME-main =		lbdb-${VERSION}
PKGNAME-ldap =		lbdb-ldap-${VERSION}

CATEGORIES =		databases mail

HOMEPAGE =		https://www.spinnaker.de/lbdb/

MULTI_PACKAGES =	-main -ldap

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB-main =		c iconv

MASTER_SITES =		https://www.spinnaker.de/lbdb/download/

BUILD_DEPENDS =		${RUN_DEPENDS-main}
LIB_DEPENDS-main =	converters/libiconv
RUN_DEPENDS-main =	mail/abook
RUN_DEPENDS-ldap =	databases/p5-ldap \
			databases/lbdb

LIB_DEPENDS-ldap =
WANTLIB-ldap =

MAKE_ENV =		install_prefix=${WRKINST}

NO_TEST =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--libdir=${PREFIX}/lib/lbdb \
			--with-libiconv-prefix=${LOCALBASE} \
			--without-addr-email \
			--without-niscat \
			--without-gpg \
			--without-pgpk \
			--without-pgp \
			--without-evolution-addressbook-export \
			--enable-lbdb-dotlock
CONFIGURE_ENV =		ac_cv_path_BASH=NONE \
			ac_cv_path_GAWK=NONE \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/${DISTNAME:S/_/-/}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb
	mv ${WRKINST}/etc/lbdb.rc ${WRKINST}/etc/lbdb_ldap.rc \
	    ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb

.include <bsd.port.mk>
