# $OpenBSD: Makefile,v 1.2 2008/11/07 14:09:08 bernd Exp $

COMMENT-main =		little brother's database, email address query tools
COMMENT-ldap =		LDAP support for little brother's database

VERSION =		0.35.1
DISTNAME =		lbdb_${VERSION}

PKGNAME-main =		lbdb-${VERSION}
PKGNAME-ldap =		lbdb-ldap-${VERSION}

CATEGORIES =		databases mail

HOMEPAGE =		http://www.spinnaker.de/lbdb/

MULTI_PACKAGES =	-main -ldap

# GPL
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

WRKDIST =		${WRKDIR}/${DISTNAME:S/_/-/}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb
	mv ${WRKINST}/etc/lbdb.rc ${WRKINST}/etc/lbdb_ldap.rc \
	    ${WRKINST}/${TRUEPREFIX}/share/examples/lbdb

.include <bsd.port.mk>
