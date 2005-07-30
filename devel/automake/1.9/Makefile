# $OpenBSD: Makefile,v 1.1.1.1 2005/07/30 23:35:31 aanriot Exp $

COMMENT=	"GNU standards-compliant Makefile generator"

VERSION=	1.9
DISTNAME=	automake-${VERSION}.6

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
MAKE_FLAGS+=		MAKEINFO="makeinfo --no-split" \
			pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
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

.include <bsd.port.mk>

