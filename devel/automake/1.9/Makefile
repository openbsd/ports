# $OpenBSD: Makefile,v 1.23 2012/06/25 15:45:14 espie Exp $

VERSION=	1.9
DISTNAME=	automake-${VERSION}.6
REVISION=	9
PKGSPEC =	automake->=${VERSION},<1.10

MODULES=		lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

CONFIGURE_STYLE=	gnu
MAKE_ENV +=		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

CONFIGURE_ARGS=		--infodir=${PREFIX}/info
MAKE_FLAGS+=		pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODPY_RUN_DEPENDS} \
			devel/libtool \
			devel/gmake \
			archivers/bzip2 \
			devel/bison \
			editors/emacs21 \
			print/texlive/base \
			devel/dejagnu

REGRESS_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			MAKE=${GMAKE}

post-patch:
	cd ${WRKSRC}; touch aclocal.m4 Makefile.in configure

do-regress:
	    ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	    @cd ${WRKBUILD} && \
	    	exec ${SETENV} ${MAKE_ENV} ${REGRESS_ENV} \
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
