COMMENT-main=	UPS monitoring program supporting many brands
COMMENT-cgi=	CGIs for monitoring Nut-based UPSs
COMMENT-snmp=	driver for monitoring UPS via SNMP
COMMENT-xml=	driver for monitoring UPS via XML/HTTP

GH_ACCOUNT=	networkupstools
GH_PROJECT=	nut
GH_COMMIT=	29e40fd648da86253fe97ab47e72525e1194b885
DISTNAME=	nut-2.8.0pre20220312

PKGNAME-main=	${DISTNAME}
PKGNAME-cgi=	${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=	${DISTNAME:S/-/-snmp-/}
PKGNAME-xml=	${DISTNAME:S/-/-xml-/}

SHARED_LIBS +=	upsclient            4.0      # .4.0
SHARED_LIBS +=	nutclient            0.0      # .0.0
SHARED_LIBS +=	nutclientstub        0.0      # .1.0
SHARED_LIBS +=	nutscan              2.0      # .1.0

CATEGORIES=	sysutils
HOMEPAGE=	https://networkupstools.org/

# GPLv2+, some scripts (not packaged) are GPLv3+
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc base-gcc

COMMON +=	c crypto pthread
WANTLIB-main +=	${COMMON} ltdl m ssl ${COMPILER_LIBCXX} usb usb-1.0
WANTLIB-xml +=	${COMMON} expat iconv intl neon proxy ssl z
WANTLIB-cgi +=	${COMMON} X11 expat fontconfig iconv intl
WANTLIB-cgi +=	freetype gd jpeg m png ssl upsclient xcb z
WANTLIB-snmp +=	${COMMON} m netsnmp

#MASTER_SITES=		${HOMEPAGE}source/2.7/

MODULES=	lang/python
MODPY_RUNDEP=	No
# if avahi is present at build time, avahi support is built in nut-scanner,
# but it's dlopen()'d at runtime, so support is optional, so we don't list a
# hard run dependency for this (to reduce deps in the common case).
BUILD_DEPENDS+=	net/avahi,-libs
BUILD_DEPENDS+=	textproc/asciidoc>=8.6.8 \
		textproc/docbook-xsl

WEB_ROOT=	/var/www
SUBST_VARS=	BASESYSCONFDIR WEB_ROOT

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
AUTORECONF=	./autogen.sh

SYSCONFDIR=	${BASESYSCONFDIR}/nut
LDFLAGS+=	-L${LOCALBASE}/lib -pthread
CONFIGURE_ARGS+= --datadir=${PREFIX}/share/nut \
		--htmldir=${PREFIX}/share/doc/nut \
		--includedir=${PREFIX}/include/nut \
		--with-dev \
		--with-doc=man \
		--with-hal-libs="" \
		--with-ssl \
		--with-statepath=/var/db/nut \
		--with-user=_ups \
		--with-group=_ups \
		--without-ipmi \
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

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libtool,-ltdl \
			devel/libusb-compat
RUN_DEPENDS-main=	# empty

PREFIX-cgi=		${WEB_ROOT}

LIB_DEPENDS-xml=	net/neon
RUN_DEPENDS-xml=	${RUN_DEPENDS} \
			sysutils/nut

LIB_DEPENDS-snmp=	net/net-snmp
RUN_DEPENDS-snmp=	sysutils/nut

LIB_DEPENDS-cgi=	devel/gettext,-runtime \
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
	    cables images ${PREFIX}/share/doc/nut/
	-cd ${WRKSRC}/docs; cp -R *html ${PREFIX}/share/doc/nut/
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/avahi/nut.service \
	    ${PREFIX}/share/examples/nut
	rm -r ${PREFIX}/share/nut/solaris-init

.include <bsd.port.mk>
