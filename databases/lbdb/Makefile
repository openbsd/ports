# $OpenBSD: Makefile,v 1.17 2014/09/16 12:15:23 sthen Exp $

COMMENT-main =		"little brother's database", email address query tools
COMMENT-ldap =		LDAP support for lbdb

VERSION =		0.39

DISTNAME =		lbdb_${VERSION}
PKGNAME-main =		lbdb-${VERSION}
PKGNAME-ldap =		lbdb-ldap-${VERSION}

CATEGORIES =		databases mail

HOMEPAGE =		http://www.spinnaker.de/lbdb/

MULTI_PACKAGES =	-main -ldap

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS-ldap =	databases/p5-ldap \
			databases/lbdb

MODULES =		converters/libiconv
WANTLIB-main =		c ${MODLIBICONV_WANTLIB}
LIB_DEPENDS-ldap =
WANTLIB-ldap =

MASTER_SITES =		http://www.spinnaker.de/debian/

MAKE_ENV =		install_prefix=${WRKINST}

NO_TEST =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS += 	--libdir=${PREFIX}/lib/lbdb \
			--with-libiconv-prefix=${LOCALBASE} \
			--without-abook \
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
