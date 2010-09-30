# $OpenBSD: Makefile,v 1.14 2010/09/30 15:51:54 sthen Exp $

COMMENT=	GNU standards-compliant Makefile generator

VERSION=	1.9
DISTNAME=	automake-${VERSION}.6
REVISION=	5

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS=		::devel/metaauto
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

SUFFIX=			-${VERSION}
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--infodir=${PREFIX}/info
MAKE_FLAGS+=		pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}
SUBST_VARS=		SUFFIX

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODPY_RUN_DEPENDS} \
			::devel/libtool \
			::devel/gmake \
			::archivers/bzip2 \
			::devel/bison \
			::editors/emacs21 \
			::print/texlive/base \
			::devel/dejagnu

TESTS_ENVIRONMENT=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			MAKE=${GMAKE}

post-patch:
	touch ${WRKSRC}/aclocal.m4
	touch ${WRKSRC}/Makefile.in

do-regress:
	    ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	    @cd ${WRKBUILD} && \
	    	exec ${SETENV} ${MAKE_ENV} \
		TESTS_ENVIRONMENT='${TESTS_ENVIRONMENT}' \
		    ${MAKE_PROGRAM} ${ALL_REGRESS_FLAGS} -f ${MAKE_FILE} \
		    ${REGRESS_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi

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
