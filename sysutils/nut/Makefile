# $OpenBSD: Makefile,v 1.31 2009/04/03 15:40:12 sthen Exp $

COMMENT-main=		UPS monitoring program supporting many brands
COMMENT-cgi=		CGIs for monitoring Nut-based UPSs
COMMENT-snmp=		driver for monitoring UPSs via SNMP

DISTNAME=		nut-2.4.1
PKGNAME-main=		${DISTNAME}
PKGNAME-cgi=		${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=		${DISTNAME:S/-/-snmp-/}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

SHARED_LIBS+=		upsclient 1.0

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=		${HOMEPAGE}source/2.4/

# GPLv2+, some scripts (not packaged) are GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB-main=		c crypto expat iconv intl m ssl z \
			asn1 gssapi krb5
WANTLIB-snmp=		c crypto

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		WEB_ROOT NUT_USER NUT_ID

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}/nut \
			--datadir=${PREFIX}/share/ups \
			--mandir=${PREFIX}/man \
			--with-statepath=/var/db/nut \
			--with-user=${NUT_USER} \
			--with-group=${NUT_USER} \
			--with-ssl \
			--enable-strip

PSEUDO_FLAVORS=		snmp
FLAVOR?=
MULTI_PACKAGES=		-main -cgi
.if ${FLAVOR:L:Msnmp}
MULTI_PACKAGES+=	-snmp
.endif

LIB_DEPENDS-main=	usb::devel/libusb \
			neon::net/neon

PREFIX-cgi=		${WEB_ROOT}
WANTLIB-cgi=

LIB_DEPENDS-snmp=	netsnmp::net/net-snmp

.if ${MULTI_PACKAGES:M-cgi}
BUILD_DEPENDS+=		:gd->=1.8.3:graphics/gd

CONFIGURE_ARGS+=	--with-cgi \
			--with-cgipath="${WEB_ROOT}/cgi-bin/nut" \
			--with-gd-libs="-L/usr/X11R6/lib -L${PREFIX}/lib \
			    -lgd -lpng -lz -ljpeg -lm -lfreetype -lX11" \
			--with-gd-includes="-I${PREFIX}/include"
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut/
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/nut/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nut/
.for file in upsmon.conf upsd.conf upsd.users upssched.conf ups.conf
	${INSTALL_DATA} ${WRKBUILD}/conf/${file}.sample \
	    ${PREFIX}/share/examples/nut/${file}
.endfor
# Yes, we install the CGI config files even if we're not building CGI support,
# it will get properly handled by packaging.
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut/
.for file in hosts.conf upsset.conf upsstats.html upsstats-single.html
	${INSTALL_DATA} ${WRKBUILD}/conf/${file}.sample \
	    ${WRKINST}${WEB_ROOT}/conf/nut/${file}.sample
.endfor

.include <bsd.port.mk>
