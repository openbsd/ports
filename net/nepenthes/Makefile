# $OpenBSD: Makefile,v 1.8 2007/03/17 21:50:11 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"determine the malware activity on a network"

DISTNAME= 	nepenthes-0.2.0
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
		magic.>=1::devel/libmagic \
		pcre.>=1::devel/pcre

WANTLIB=	c crypto m ssl stdc++ pcap z

FAKE_FLAGS+=	localstatedir='/var/nepenthes' \
		sysconfdir='${PREFIX}/share/examples'

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=--enable-debug-logging \
		--disable-mysql \
		--disable-postgre \
		--disable-capabilities \
		--localstatedir='/var/nepenthes' \
		--with-curl-lib=${PREFIX}/lib

pre-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKBUILD}/conf/nepenthes.conf.dist
	@perl -pi -e "s,%%PREFIX%%,${PREFIX}," \
		${WRKBUILD}/conf/nepenthes.conf.dist
	@perl -pi -e 's:\"var\/log:\"\/var\/nepenthes\/log:g' \
		${WRKBUILD}/modules/log-download/log-download.conf.dist
	@perl -pi -e 's:\"var\/binaries:\"/var\/nepenthes\/binaries:g' \
		${WRKBUILD}/modules/submit-file/submit-file.conf.dist

.include <bsd.port.mk>
