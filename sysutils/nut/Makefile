# $OpenBSD: Makefile,v 1.54 2011/12/12 22:16:39 sthen Exp $

COMMENT-main=		UPS monitoring program supporting many brands
COMMENT-cgi=		CGIs for monitoring Nut-based UPSs
COMMENT-snmp=		driver for monitoring UPS via SNMP
COMMENT-xml=		driver for monitoring UPS via XML/HTTP
COMMENT-scanner=	UPS scanning tool for nut

DISTNAME=		nut-2.6.2
REVISION-main=		2
REVISION-cgi=		2
REVISION-scanner=	1
REVISION-snmp=		0
REVISION-xml=		2

PKGNAME-main=		${DISTNAME}
PKGNAME-cgi=		${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=		${DISTNAME:S/-/-snmp-/}
PKGNAME-xml=		${DISTNAME:S/-/-xml-/}
PKGNAME-scanner=	${DISTNAME:S/-/-scanner-/}

SHARED_LIBS +=  upsclient            1.0      # 1.0
SHARED_LIBS +=  nutscan              0.0      # 1.0

CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2+, some scripts (not packaged) are GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMON +=	c crypto pthread
WANTLIB-main +=	${COMMON} m ssl usb usb-1.0
WANTLIB-xml +=	${COMMON} ${MODGETTEXT_WANTLIB} asn1 expat gssapi krb5 neon ssl z
WANTLIB-cgi +=	${COMMON} ${MODGETTEXT_WANTLIB} X11 expat fontconfig
WANTLIB-cgi +=	freetype gd jpeg m png ssl upsclient xcb z
WANTLIB-snmp +=	${COMMON} m netsnmp
WANTLIB-scanner += ${WANTLIB-main} ${WANTLIB-snmp} ${WANTLIB-xml} upsclient
WANTLIB-scanner += avahi-client avahi-common avahi-core dbus-1

MASTER_SITES=		${HOMEPAGE}source/2.6/

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS+=		textproc/asciidoc \
			textproc/docbook \
			textproc/docbook-xsl

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		WEB_ROOT NUT_USER NUT_ID
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
SYSCONFDIR=		${BASESYSCONFDIR}/nut
CONFIGURE_ARGS+=	A2X=${LOCALBASE}/bin/a2x.py \
			--datadir=${PREFIX}/share/ups \
			--with-doc=html-single \
			--with-ssl \
			--with-statepath=/var/db/nut \
			--with-user=${NUT_USER} \
			--with-group=${NUT_USER}

PSEUDO_FLAVORS=		no_snmp no_xml
FLAVOR?=
MULTI_PACKAGES=		-main -cgi

.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
.endif

.if ${FLAVOR:L:Mno_xml}
CONFIGURE_ARGS+=	--without-neon
.else
MULTI_PACKAGES+=	-xml
.endif

.if ! ${FLAVOR:L:Mno_xml} && ! ${FLAVOR:L:Mno_snmp}
MULTI_PACKAGES+=	-scanner
.endif

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			devel/libusb-compat
RUN_DEPENDS-main=	# empty

PREFIX-cgi=		${WEB_ROOT}

LIB_DEPENDS-xml=	net/neon
RUN_DEPENDS-xml=	${RUN_DEPENDS} \
			sysutils/nut

LIB_DEPENDS-snmp=	net/net-snmp
RUN_DEPENDS-snmp=	sysutils/nut

LIB_DEPENDS-scanner=	${LIB_DEPENDS-main} \
			${LIB_DEPENDS-snmp} \
			${LIB_DEPENDS-xml} \
			net/avahi \
			sysutils/nut

LIB_DEPENDS-cgi=	${LIB_DEPENDS} \
			graphics/jpeg \
			graphics/gd \
			sysutils/nut

.if ${MULTI_PACKAGES:M-cgi}
BUILD_DEPENDS+=		graphics/gd>=1.8.3

CONFIGURE_ARGS+=	--with-cgi \
			--with-cgipath="${WEB_ROOT}/cgi-bin/nut" \
			--with-gd-libs="-L${X11BASE}/lib -L${PREFIX}/lib \
			    -lgd -lpng -lz -ljpeg -lm -lfreetype -lX11" \
			--with-gd-includes="-I${PREFIX}/include"
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nut

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/upssched.conf.sample.in
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut/
.for file in hosts.conf upsset.conf upsstats.html upsstats-single.html
	${INSTALL_DATA} ${WRKBUILD}/conf/${file}.sample \
	    ${WRKINST}${WEB_ROOT}/conf/nut/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut/
	cd ${WRKSRC}/docs; cp -R ../[A-LN-Z]* ../MAINTAINERS \
	    *html cables images ${PREFIX}/share/doc/nut/
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/avahi/nut.service \
	    ${PREFIX}/share/examples/nut

.include <bsd.port.mk>
