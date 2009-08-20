# $OpenBSD: Makefile,v 1.1.1.1 2009/08/20 20:36:12 bernd Exp $

SHARED_ONLY =	Yes

COMMENT =	Nginx module for deploying Ruby applications

DISTNAME =	passenger-2.2.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://www.modrails.com/

MAINTAINER =	Bernd Ahlers <bernd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=passenger/}

MODULES =		lang/ruby

WANTLIB =		c m pthread stdc++

LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-rake \
			::devel/ruby-fastthread \
			::www/ruby-rack

PORTHOME =		${WRKDIR}

MAKE_ENV +=		CC=${CC} CXX=${CXX}

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/rake nginx
	@perl -pi -e "s#PASSENGER_ROOT =.*#PASSENGER_ROOT = '${PREFIX}/lib/phusion_passenger'#g" \
		${WRKSRC}/bin/passenger-config
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/rake fakeroot
	@find ${WRKBUILD}/pkg/fakeroot -name '*.orig' | xargs -r rm -f

do-install:
	cd ${WRKBUILD}/pkg/fakeroot/usr/local && \
		tar -cf - * | tar -C ${PREFIX} -xf -
	rm -f ${PREFIX}/bin/passenger-install-apache2-module
	rm -f ${PREFIX}/bin/passenger-make-enterprisey
	rm -f ${PREFIX}/bin/passenger-install-nginx-module
	${INSTALL_DATA_DIR} ${PREFIX}/lib/phusion_passenger/ext
	cd ${WRKBUILD}/ext && tar -cf - common nginx | \
		tar -C ${PREFIX}/lib/phusion_passenger/ext -xf -
	find ${PREFIX}/lib/phusion_passenger/ext -name '*.orig' | \
		xargs -r rm -f
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_DATA} ${FILESDIR}/*.sample ${PREFIX}/share/nginx

.include <bsd.port.mk>
