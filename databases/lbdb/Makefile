# $OpenBSD: Makefile,v 1.7 2009/08/07 19:43:36 naddy Exp $

COMMENT-main =		little brother's database, email address query tools
COMMENT-ldap =		LDAP support for little brother's database

VERSION =		0.36
DISTNAME =		lbdb_${VERSION}

# bump all subpackages together
PKGNAME-main =		lbdb-${VERSION}p3
PKGNAME-ldap =		lbdb-ldap-${VERSION}p3

CATEGORIES =		databases mail

HOMEPAGE =		http://www.spinnaker.de/lbdb/

MULTI_PACKAGES =	-main -ldap

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS-ldap =	::databases/p5-ldap \
			:${FULLPKGNAME-main}:databases/lbdb

MODULES =		converters/libiconv
WANTLIB-main =		c
LIB_DEPENDS-ldap =

MASTER_SITES =		http://www.spinnaker.de/debian/

MAKE_ENV =		install_prefix=${WRKINST}

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
