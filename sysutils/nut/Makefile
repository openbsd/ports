# $OpenBSD: Makefile,v 1.75 2014/03/23 21:23:51 sthen Exp $

COMMENT-main=		UPS monitoring program supporting many brands
COMMENT-cgi=		CGIs for monitoring Nut-based UPSs
COMMENT-snmp=		driver for monitoring UPS via SNMP
COMMENT-xml=		driver for monitoring UPS via XML/HTTP

DISTNAME=		nut-2.7.1
REVISION-main=		0

PKGNAME-main=		${DISTNAME}
PKGNAME-cgi=		${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=		${DISTNAME:S/-/-snmp-/}
PKGNAME-xml=		${DISTNAME:S/-/-xml-/}

SHARED_LIBS +=	upsclient            2.0      # .3.1
SHARED_LIBS +=	nutclient            0.0      # .0.0
SHARED_LIBS +=	nutscan              1.0      # .1.0

CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2+, some scripts (not packaged) are GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

COMMON +=	c crypto pthread
WANTLIB-main +=	${COMMON} ltdl m ssl stdc++ usb usb-1.0
WANTLIB-xml +=	${COMMON} ${MODGETTEXT_WANTLIB} asn1 expat gssapi krb5 neon ssl z proxy
WANTLIB-xml +=	com_err heimbase roken wind
WANTLIB-cgi +=	${COMMON} ${MODGETTEXT_WANTLIB} X11 expat fontconfig
WANTLIB-cgi +=	freetype gd jpeg m png ssl upsclient xcb z
WANTLIB-snmp +=	${COMMON} m netsnmp

MASTER_SITES=		${HOMEPAGE}source/2.7/

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No
# if avahi is present at build time, avahi support is built in nut-scanner,
# but it's dlopen()'d at runtime, so support is optional, so we don't list a
# hard run dependency for this (to reduce deps in the common case).
BUILD_DEPENDS+=		net/avahi
BUILD_DEPENDS+=		textproc/asciidoc>=8.6.8 \
			textproc/docbook-xsl

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		BASESYSCONFDIR NUT_USER NUT_ID WEB_ROOT
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
SYSCONFDIR=		${BASESYSCONFDIR}/nut
LDFLAGS+=		-L${LOCALBASE}/lib -pthread
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/ups \
			--with-doc=html-single \
			--with-hal-libs="" \
			--with-ssl \
			--with-statepath=/var/db/nut \
			--with-user=${NUT_USER} \
			--with-group=${NUT_USER} \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS}"

PSEUDO_FLAVORS=		no_snmp no_xml
FLAVOR?=
MULTI_PACKAGES=		-main -cgi

.if ${FLAVOR:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
.endif

.if ${FLAVOR:Mno_xml}
CONFIGURE_ARGS+=	--without-neon
.else
MULTI_PACKAGES+=	-xml
.endif

LIB_DEPENDS-main=	devel/libtool,-ltdl \
			devel/libusb-compat
RUN_DEPENDS-main=	# empty

PREFIX-cgi=		${WEB_ROOT}

LIB_DEPENDS-xml=	net/neon
RUN_DEPENDS-xml=	${RUN_DEPENDS} \
			sysutils/nut

LIB_DEPENDS-snmp=	net/net-snmp
RUN_DEPENDS-snmp=	sysutils/nut

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
USE_LIBTOOL=		gnu# -all-static
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nut

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/upssched.conf.sample.in
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

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
