# $OpenBSD: Makefile,v 1.2 2007/04/07 20:02:14 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	"irssi module allowing you to connect to SILC network"

IRSSI_VERSION=	0.8.10
SILC_VERSION=	1.0.4.1
DISTNAME=	irssi-${IRSSI_VERSION}
DISTFILES=	${DISTNAME}a.tar.gz \
		silc-plugin-${SILC_VERSION}.tar.gz:0 \
		silc-client-${SILC_VERSION}.tar.gz:1
PKGNAME=	irssi-silc-${SILC_VERSION}p0
CATEGORIES=	net

HOMEPAGE=	http://penguin-breeder.org/silc/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.irssi.org/files/
MASTER_SITES0=	${HOMEPAGE}/download/ \
		http://mirrors.protection.cx/~jolan/
MASTER_SITES1=	http://ftp.silcnet.org/client/sources/ \
		ftp://ftp.silcnet.org/silc/client/sources/ \
		http://www.planetmirror.com/pub/silcnet/client/sources/ \
		ftp://ftp.au.silcnet.org/pub/silcnet/client/sources/ \
		http://munitions.vipul.net/software/mirrors/silc/client/sources/ \
		ftp://ftp.no.silcnet.org/pub/silc/client/sources/ \
		http://the.wiretapped.net/security/network-security/silc/client/sources/ \
		ftp://ftp.wiretapped.net/pub/security/network-security/silc/client/sources/

MODULES=	devel/gettext

BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		:automake-${AUTOMAKE_VERSION}.*:devel/automake/${AUTOMAKE_VERSION} \
		::devel/glib \
		::devel/glib2
RUN_DEPENDS=	:irssi-0.*:net/irssi \
		::devel/p5-IO-stringy \
		::mail/p5-MIME-tools \
		::misc/p5-File-MMagic

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE=  gnu
AUTOCONF_VERSION= 2.59
AUTOMAKE_VERSION= 1.9
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} \
			 ${CLIENT_DIR}

CONFIGURE_ARGS+= --enable-ipv6 \
		 --with-pic \
		 --with-proxy \
		 --without-included-gettext \
		 --enable-perl=yes \
		 --with-perl-lib=${PREFIX}/libdata/perl5/site_perl \
		 --sysconfdir=/etc
CONFIGURE_ARGS0+= ${CONFIGURE_ARGS} \
		  --enable-ipv6 \
		  --with-helpdir=${PREFIX}/share/irssi/help/silc \
		  --with-docdir=${PREFIX}/share/doc/silc \
		  --with-etcdir=${SYSCONFDIR}/silc \
		  --with-iconv=${LOCALBASE} \
		  --with-perl-lib=${PREFIX}/libdata/perl5/site_perl
# needed by plugin
CONFIGURE_ARGS0+= --without-libtoolfix \
		  --enable-static \
		  --enable-debug \
		  --without-silc-libs

.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS0+= --disable-asm
.endif

CFLAGS+=	-fPIC -DPIC

CLIENT_DIR=${WRKDIR}/silc-client-${SILC_VERSION}
PLUGIN_DIR=${WRKDIR}/silc-plugin-${SILC_VERSION}

PATCH_ARGS+= -d ${WRKDIR} --quiet
PATCH_DIST_ARGS+= -d ${WRKDIR} --quiet

pre-configure:
	@cd ${CLIENT_DIR} && ${SETENV} CC="${CC}" ac_cv_path_CC="${CC}" \
		CFLAGS="${CFLAGS:C/ *$//}" CXX="${CXX}" \
		ac_cv_path_CXX="${CXX}" CXXFLAGS="${CXXFLAGS:C/ *$//}" \
		${CONFIGURE_ENV} LIBTOOL="${LIBTOOL} --tag=disable-shared" \
		./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS0}

	# Do NOT use any kind of parallel build system to compile the silc-client!
	@cd ${CLIENT_DIR}/lib && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET} \
		LIBTOOL="${LIBTOOL} --tag=disable-shared"
	@cd ${PLUGIN_DIR} && ${SETENV} ${MAKE_ENV} \
		${SETENV} ${CONFIGURE_ENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} patch \
			IRSSI=${WRKSRC} SILC=${CLIENT_DIR}

do-build:
	@cd ${WRKSRC}/src/perl && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	@cd ${WRKSRC}/src/fe-common/silc && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	@cd ${WRKSRC}/src/silc/core && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	@cd ${WRKSRC}/src/perl/silc && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
	@cd ${WRKSRC}/src/fe-common/silc && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
	@cd ${WRKSRC}/src/silc/core && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
	@cd ${CLIENT_DIR}/apps/irssi/docs/help && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

.for i in la so
	@mv -f ${PREFIX}/lib/irssi/modules/libfe_common_silc.${i} \
		${PREFIX}/lib/irssi/modules/libfe_silc.${i}
.endfor

	${INSTALL_DATA} ${PLUGIN_DIR}/docs/silc ${PREFIX}/share/irssi/help/silc/
	@mkdir -p ${PREFIX}/share/examples/irssi/scripts && \
		${INSTALL_DATA} ${PLUGIN_DIR}/scripts/*.pl \
			${PREFIX}/share/examples/irssi/scripts/
	@mkdir -p ${PREFIX}/share/examples/irssi/themes && \
		${INSTALL_DATA} ${PLUGIN_DIR}/default.theme \
			${PREFIX}/share/examples/irssi/themes/silc.theme
	@mkdir -p ${PREFIX}/share/doc/irssi/silc && \
		${INSTALL_DATA} ${PLUGIN_DIR}/{README,USAGE} \
			${PREFIX}/share/doc/irssi/silc/

.include <bsd.port.mk>
