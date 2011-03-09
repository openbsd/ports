# $OpenBSD: Makefile,v 1.43 2011/03/09 11:00:55 sthen Exp $

COMMENT-main=		UPS monitoring program supporting many brands
COMMENT-cgi=		CGIs for monitoring Nut-based UPSs
COMMENT-snmp=		driver for monitoring UPSs via SNMP

DISTNAME=		nut-2.6.0

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

WANTLIB-main += ${WANTLIB} c crypto expat m ssl z asn1 gssapi krb5 neon usb
WANTLIB-cgi +=	${WANTLIB} c crypto X11 Xau Xdmcp c crypto expat fontconfig
WANTLIB-cgi +=	freetype gd jpeg m png pthread-stubs ssl upsclient xcb z
WANTLIB-snmp +=	c crypto netsnmp

MASTER_SITES=		${HOMEPAGE}source/2.6/

MODULES=		devel/gettext
BUILD_DEPENDS+=		textproc/asciidoc \
			textproc/docbook \
			textproc/docbook-xsl

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		WEB_ROOT NUT_USER NUT_ID
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	A2X=${LOCALBASE}/bin/a2x.py \
			--sysconfdir=${SYSCONFDIR}/nut \
			--datadir=${PREFIX}/share/ups \
			--mandir=${PREFIX}/man \
			--with-doc=html-single \
			--with-ssl \
			--with-statepath=/var/db/nut \
			--with-user=${NUT_USER} \
			--with-group=${NUT_USER}

PSEUDO_FLAVORS=		no_snmp
FLAVOR?=
MULTI_PACKAGES=		-main -cgi
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
.endif

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			devel/libusb \
			net/neon

PREFIX-cgi=		${WEB_ROOT}

LIB_DEPENDS-snmp=	net/net-snmp
RUN_DEPENDS-snmp=	sysutils/nut,-main

LIB_DEPENDS-cgi=	${LIB_DEPENDS} \
			graphics/jpeg \
			graphics/gd \
			sysutils/nut,-main
RUN_DEPENDS-cgi=	# empty

.if ${MULTI_PACKAGES:M-cgi}
BUILD_DEPENDS+=		graphics/gd>=1.8.3

CONFIGURE_ARGS+=	--with-cgi \
			--with-cgipath="${WEB_ROOT}/cgi-bin/nut" \
			--with-gd-libs="-L/usr/X11R6/lib -L${PREFIX}/lib \
			    -lgd -lpng -lz -ljpeg -lm -lfreetype -lX11" \
			--with-gd-includes="-I${PREFIX}/include"
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nut

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/upssched.conf.sample.in

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut/
.for file in hosts.conf upsset.conf upsstats.html upsstats-single.html
	${INSTALL_DATA} ${WRKBUILD}/conf/${file}.sample \
	    ${WRKINST}${WEB_ROOT}/conf/nut/${file}.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut/
	cd ${WRKSRC}/docs; cp -R ../[A-LN-Z]* ../MAINTAINERS \
	    *html cables images ${PREFIX}/share/doc/nut/
.endfor

.include <bsd.port.mk>
