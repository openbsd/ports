# $OpenBSD: Makefile,v 1.3 2006/11/24 17:35:32 sturm Exp $

COMMENT=	"GNU standards-compliant Makefile generator"

VERSION=	1.9
DISTNAME=	automake-${VERSION}.6
PKGNAME=	${DISTNAME}p1

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS=		::devel/metaauto
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

SUFFIX=			-${VERSION}
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--infodir=${PREFIX}/info
MAKE_FLAGS+=		pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}
FAKE_FLAGS+=		${MAKE_FLAGS}
SUBST_VARS=		SUFFIX

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			::devel/libtool \
			::devel/gmake \
			::archivers/bzip2 \
			::devel/bison \
			::devel/libtool \
			::lang/python/2.3 \
			::editors/emacs21 \
			::print/teTeX/base \
			::devel/dejagnu

TESTS_ENVIRONMENT=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			MAKE=${GMAKE}

do-regress:
	    @cd ${WRKBUILD} && \
	    	exec ${SETENV} ${MAKE_ENV} \
		TESTS_ENVIRONMENT='${TESTS_ENVIRONMENT}' \
		    ${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} \
		    ${REGRESS_TARGET}

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info
	perl -pi -e "s,automake\: \(automake\),automake-1\.9\: \(automake-1\.9\)," \
		${PREFIX}/info/automake${SUFFIX}.info
	perl -pi -e "s,aclocal\: \(automake\),aclocal: \(automake-1\.9\)," \
		${PREFIX}/info/automake${SUFFIX}.info

.for f in info-1 info-2
	cd ${PREFIX}/info && mv automake.${f} automake${SUFFIX}.${f} \
		&& perl -pi -e "s,automake.${f},automake${SUFFIX}.${f}," \
		${PREFIX}/info/automake${SUFFIX}.info
.endfor

.include <bsd.port.mk>
