# $OpenBSD: Makefile,v 1.3 2009/04/13 13:23:35 sthen Exp $

COMMENT-main =		little brother's database, email address query tools
COMMENT-ldap =		LDAP support for little brother's database

VERSION =		0.36
DISTNAME =		lbdb_${VERSION}

PKGNAME-main =		lbdb-${VERSION}
PKGNAME-ldap =		lbdb-ldap-${VERSION}

CATEGORIES =		databases mail

HOMEPAGE =		http://www.spinnaker.de/lbdb/

MULTI_PACKAGES =	-main -ldap

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS-main =	::textproc/gsed \
			::sysutils/ggrep

RUN_DEPENDS-ldap =	::databases/p5-ldap \
			:${FULLPKGNAME-main}:databases/lbdb

WANTLIB =		c

MASTER_SITES =		http://www.spinnaker.de/debian/

MAKE_ENV =		install_prefix=${WRKINST}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS += 	--libdir=${PREFIX}/lib/lbdb \
			--without-abook \
			--without-addr-email \
			--without-niscat \
			--without-gpg \
			--without-pgpk \
			--without-pgp \
			--without-evolution-addressbook-export \
			--enable-lbdb-dotlock
CONFIGURE_ENV =		ac_cv_path_BASH=false

WRKDIST =		${WRKDIR}/${DISTNAME:S/_/-/}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb
	mv ${WRKINST}/etc/lbdb.rc ${WRKINST}/etc/lbdb_ldap.rc \
	    ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb

.include <bsd.port.mk>
