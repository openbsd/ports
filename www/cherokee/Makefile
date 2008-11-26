# $OpenBSD: Makefile,v 1.2 2008/11/26 09:05:31 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main =	fast, flexible and easy to configure Web Server
COMMENT-geoip =	GeoIP module for Cherokee web server
COMMENT-ldap =	LDAP module for Cherokee web server
COMMENT-mysql =	MySQL module for Cherokee web server

VERSION =	0.8.1
DISTNAME =	cherokee-${VERSION}

PKGNAME-main =	${DISTNAME}p0
PKGNAME-ldap=   cherokee-ldap-${VERSION}
PKGNAME-mysql=  cherokee-mysql-${VERSION}
PKGNAME-geoip=  cherokee-geoip-${VERSION}

SHARED_LIBS +=	cherokee-base        0.0      # .0.1
SHARED_LIBS +=	cherokee-client      0.0      # .0.1
SHARED_LIBS +=	cherokee-config      0.0      # .0.1
SHARED_LIBS +=	cherokee-server      0.0      # .0.1

CATEGORIES =	www

HOMEPAGE =	http://www.cherokee-project.com/

MAINTAINER =	Fernando Quintero <fernando.a.quintero@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes 
PERMIT_DISTFILES_FTP =	Yes 

MASTER_SITES  =	${HOMEPAGE}/download/${VERSION:R}/${VERSION}/ \
		http://cherokee.osuosl.org/${VERSION:R}/${VERSION}/

MULTI_PACKAGES =-main -ldap -mysql -geoip

MODULES =	lang/python

BUILD_DEPENDS =	::textproc/py-docutils \
		::www/php5/core,-fastcgi

LIB_DEPENDS-main =	pcre::devel/pcre
WANTLIB-main =		c crypto pthread ssl

LIB_DEPENDS-geoip =	GeoIP.>=6::net/GeoIP
WANTLIB-geoip =		crypto
RUN_DEPENDS-geoip =	::${BASE_PKGPATH}

LIB_DEPENDS-ldap =	lber.>=9,ldap::databases/openldap
WANTLIB-ldap =		asn1 com_err crypto gssapi krb5 sasl2 ssl
RUN_DEPENDS-ldap =	::${BASE_PKGPATH}

LIB_DEPENDS-mysql =	mysqlclient.>=19::databases/mysql
WANTLIB-mysql =		crypto m ssl z
RUN_DEPENDS-mysql =	::${BASE_PKGPATH}

USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

FAKE_FLAGS =	cherokeeconfdir="${PREFIX}/share/examples/cherokee/etc" \
		cherokeewwwdir="${PREFIX}/share/examples/cherokee/www" \
		cherokeewwwimagesdir="${PREFIX}/share/examples/cherokee/www/images"

CONFIGURE_STYLE =	gnu	
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PHPCGI="${LOCALBASE}/bin/php-fastcgi"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-static \
			--sysconfdir=${SYSCONFDIR} \
			--localstatedir=/var \
			--enable-tls=openssl \
			--with-wwwroot=/var/cherokee \
			--disable-pam \
			--with-geoip \
			--with-ldap \
			--with-mysql

SUBST_PY=	admin/server.py qa/fcgi.py qa/run-tests.py \
		contrib/06to07.py contrib/tracelor.py \
		contrib/07to08.py contrib/05to06.py

pre-configure:
.for i in ${SUBST_PY}
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},s' ${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
