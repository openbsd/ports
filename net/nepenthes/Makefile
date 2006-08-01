# $OpenBSD: Makefile,v 1.7 2006/08/01 10:50:19 espie Exp $
SHARED_ONLY=	Yes

COMMENT=	"determine the malware activity on a network"

DISTNAME= 	nepenthes-0.1.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://nepenthes.mwcollect.org/

MAINTAINER=	Rui Reis <rui@rui.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=nepenthes/}

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

LIB_DEPENDS=	adns.>=1::net/adns \
		curl.>=3.3::net/curl \
		GeoIP.>=4::net/GeoIP \
		magic.>=1::devel/libmagic \
		pcre.>=1::devel/pcre

WANTLIB=	c crypto m ssl stdc++ z

FAKE_FLAGS+=	localstatedir='/var/nepenthes' \
		sysconfdir='${PREFIX}/share/examples'

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=--disable-geolocation-ip2location \
		--disable-mysql \
		--disable-postgre \
		--enable-geolocation \
		--localstatedir='/var/nepenthes' \
		--with-curl-lib=${PREFIX}/lib

pre-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKBUILD}/conf/nepenthes.conf.dist
	@perl -pi -e "s,%%PREFIX%%,${PREFIX}," \
		${WRKBUILD}/conf/nepenthes.conf.dist
	@perl -pi -e 's:\"var\/log:\"\/var\/nepenthes\/log:g' \
		${WRKBUILD}/modules/log-download/log-download.conf.dist

.include <bsd.port.mk>
