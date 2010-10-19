# $OpenBSD: Makefile,v 1.40 2010/10/19 07:43:01 espie Exp $

COMMENT-main=		UPS monitoring program supporting many brands
COMMENT-cgi=		CGIs for monitoring Nut-based UPSs
COMMENT-snmp=		driver for monitoring UPSs via SNMP

DISTNAME=		nut-2.4.3
REVISION-main=		1
REVISION-cgi=		1
REVISION-snmp=		1

PKGNAME-main=		${DISTNAME}
PKGNAME-cgi=		${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=		${DISTNAME:S/-/-snmp-/}

CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

SHARED_LIBS+=		upsclient 1.0

# GPLv2+, some scripts (not packaged) are GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto
WANTLIB-main += ${WANTLIB}
WANTLIB-main += expat m ssl z asn1 gssapi krb5 neon usb

MASTER_SITES=		${HOMEPAGE}source/2.4/

MODULES=		devel/gettext

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		WEB_ROOT NUT_USER NUT_ID
USE_GROFF =	Yes

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

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			::devel/libusb \
			::net/neon

PREFIX-cgi=		${WEB_ROOT}
WANTLIB-cgi=		X11 Xau Xdmcp c crypto expat fontconfig freetype gd
WANTLIB-cgi+=		jpeg m png pthread-stubs ssl upsclient xcb z

WANTLIB-snmp=		${WANTLIB} netsnmp
LIB_DEPENDS-snmp=	::net/net-snmp
RUN_DEPENDS-snmp=	# empty

LIB_DEPENDS-cgi=	${LIB_DEPENDS} \
			::graphics/jpeg \
			::graphics/gd \
			::sysutils/nut,-main
RUN_DEPENDS-cgi=	# empty

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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/upssched.conf.sample.in

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
