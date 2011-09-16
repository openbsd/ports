# $OpenBSD: Makefile,v 1.20 2011/09/16 12:00:09 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	Nginx module for deploying Ruby applications

DISTNAME =	passenger-3.0.7
PKGNAME =	ruby-${DISTNAME}
REVISION =	3
CATEGORIES =	www

HOMEPAGE =	http://www.modrails.com/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		http://files.rubyforge.vm.bytemark.co.uk/passenger/

MODULES =		lang/ruby

WANTLIB =		c crypto curl idn m pthread stdc++ ssl z ${MODRUBY_WANTLIB} 

LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-rake \
			devel/ruby-fastthread \
			net/curl \
			www/ruby-rack

PORTHOME =		${WRKDIR}

MAKE_ENV +=		CC=${CC} CXX=${CXX}

pre-configure:
	perl -pi -e "s#PASSENGER_ROOT =.*#PASSENGER_ROOT = '${PREFIX}/lib/phusion_passenger'#g" \
		${WRKSRC}/bin/passenger-config
	perl -pi -e "s#\\$$\\{LOCALBASE\\}#${LOCALBASE}#g" ${WRKSRC}/build/packaging.rb \
		${WRKSRC}/ext/common/ResourceLocator.h ${WRKSRC}/lib/phusion_passenger.rb

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RAKE} nginx
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${RAKE} fakeroot

do-install:
	find ${WRKBUILD}/pkg/fakeroot -name '*.orig' | xargs -r rm -f
	cd ${WRKBUILD}/pkg/fakeroot${LOCALBASE} && \
		tar -cf - * | tar -C ${PREFIX} -xf -
	rm -f ${PREFIX}/bin/passenger-install-nginx-module
	${INSTALL_DATA_DIR} ${PREFIX}/lib/phusion-passenger/ext
	cd ${WRKBUILD}/ext && tar -cf - common nginx | \
		tar -C ${PREFIX}/lib/phusion-passenger/ext -xf -
	find ${PREFIX}/lib/phusion-passenger/ext -name '*.orig' | \
		xargs -r rm -f
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_DATA} ${FILESDIR}/*.sample ${PREFIX}/share/nginx

.include <bsd.port.mk>
