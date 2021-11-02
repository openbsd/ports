# $OpenBSD: Makefile.inc,v 1.4 2021/11/02 12:43:48 sthen Exp $

COMMENT-main=	open source multi-protocol PBX and telephony toolkit

DISTNAME=	asterisk-${VER:S/beta/-beta/:S/rc/-rc/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} pjproject-${PJ_V}.tar.bz2:0
PKGNAME-main=	asterisk-${VER}
SHORTVER=	${.CURDIR:T}

CATEGORIES=	telephony

HOMEPAGE=	https://www.asterisk.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." iLBC codec has BSD-like license terms, but also see patent
# notes in codecs/ilbc/LICENSE_ADDENDUM.
PERMIT_PACKAGE=	Yes

WANTLIB-main += c crypto curl curses edit gsm iconv iksemel
WANTLIB-main += jansson lzma m ogg portaudio pthread radcli
WANTLIB-main += spandsp sqlite3 srtp2 ssl tiff uriparser unbound uuid
WANTLIB-main += vorbis vorbisenc vorbisfile xml2 xslt z

DEBUG_PACKAGES=	${BUILD_PACKAGES}
DPB_PROPERTIES=	parallel

# Asterisk requires either nested functions (gcc extension), or -fblocks (clang).
# However -fblocks fails:
#
# - configure test fails on ld.bfd arches:
#
#    echo 'int main(){return ^{return 42;}();}' | \
#         clang -o /tmp/blockstest -fblocks -x c -L/usr/local/lib -lBlocksRuntime -
#
# -> undefined reference to `_NSConcreteGlobalBlock' (also can be tested
# on ld.lld arches by adding "-fuse-ld=bfd")
#
# - runtime fails on ld.lld arches: dlopen()ing the .so modules results in
# undefined symbols from the BlocksRuntime lib (_NSConcreteStackBlock,
# _Block_object_dispose, _Block_object_assign, etc); Asterisk appears to
# start up but without modules loaded it is useless.
#
# So, as things stand, this requires building with gcc.
#
# If this is fixed and moved to clang, update telephony/asterisk-g729 in sync.
COMPILER=		ports-gcc

SHARED_LIBS+=		asteriskssl ${SHLIB_V}
SHARED_LIBS+=		asteriskpj ${SHLIB_V}

MULTI_PACKAGES=		-main -calendar -http_post -kqueue -ldap -lua \
			-odbc -pgsql -snmp -speex -tds
.if ${SHORTVER} != 16
MULTI_PACKAGES+=	-vm_imap -vm_odbc
.endif

# can't disable main/kqueue
PSEUDO_FLAVORS=		${MULTI_PACKAGES:N-main:N-kqueue:C/-/no_/g}
FLAVOR?=
# disabling odbc must also knock out vm_odbc
.if ${FLAVOR:Mno_odbc}
FLAVOR+=        no_vm_odbc
.endif

# MODGCC4_CPPLIBDEP is empty on a clang build.
# leave it here, don't try to conditionalize it below, dpb doesn't like that.
LIB_DEPENDS-main=	${MODGCC4_CPPLIBDEP} \
			audio/gsm \
			audio/libogg \
			audio/libvorbis \
			audio/portaudio-svn \
			converters/libiconv \
			databases/sqlite3 \
			devel/jansson \
			graphics/tiff \
			net/curl \
			net/libunbound \
			net/radcli \
			security/libsrtp \
			sysutils/e2fsprogs \
			telephony/spandsp \
			textproc/iksemel \
			textproc/libxml \
			textproc/libxslt \
			www/uriparser
RUN_DEPENDS-main=	telephony/asterisk-sounds/core-sounds/en,gsm>=1.4.25 \
			telephony/asterisk-sounds/moh-opsound,wav

MASTER_SITES=	https://downloads.asterisk.org/pub/telephony/asterisk/releases/ \
		https://downloads.asterisk.org/pub/telephony/asterisk/old-releases/
MASTER_SITES0=	https://raw.githubusercontent.com/asterisk/third-party/master/pjproject/$(PJ_V)/ \
		https://www.pjsip.org/release/${PJ_V}/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		./bootstrap.sh
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
BUILD_DEPENDS+=		archivers/bzip2 \
			devel/libtool,-ltdl # bogus dependencies in menuselect

CPPFLAGS+=		-I${X11BASE}/include \
			-I${LOCALBASE}/include
LDFLAGS+=		-L${X11BASE}/lib \
			-L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			LIBS="-lpthread" \
			NOISY_BUILD="Yes" \
			ac_cv_path_LDCONFIG=:
MAKE_FLAGS+=		ASTCFLAGS="${CFLAGS}" \
			ASTLDFLAGS="${LDFLAGS}" \
			ASTSSL_SO_VERSION="${LIBasteriskssl_VERSION}" \
			ASTPJ_SO_VERSION="${LIBasteriskpj_VERSION}" \
			NOISY_BUILD="Yes" \
			OPTIMIZE=

CONFIGURE_ARGS+=	--localstatedir=/var \
			--with-download-cache=${FULLDISTDIR} \
			--with-pjproject-bundled
CONFIGURE_ENV+=		PJPROJECT_CONFIGURE_OPTS="--disable-bcg729 --disable-vpx"
MAKE_ENV=		LOCALBASE="${LOCALBASE}"

CONFIGURE_ARGS+=	--with-SDL_image=no \
			--with-asound=no \
			--with-avcodec=no \
			--with-beanstalk=no \
			--with-bfd=no \
			--with-bluetooth=no \
			--with-cap=no \
			--with-codec2=no \
			--with-cpg=no \
			--with-dahdi=no \
			--with-fftw3=no \
			--with-gtk2=no \
			--with-hoard=no \
			--with-isdnnet=no \
			--with-jack=no \
			--with-misdn=no \
			--with-nbs=no \
			--with-newt=no \
			--with-openr2=no \
			--with-opus=no \
			--with-opusfile=no \
			--with-osptk=no \
			--with-oss=no \
			--with-portaudio=${LOCALBASE} \
			--with-pri=no \
			--with-resample=no \
			--with-sdl=no \
			--with-sndfile=no \
			--with-sqlite=no \
			--with-ss7=no \
			--with-suppserv=no \
			--with-tonezone=no \
			--with-vpb=no

# possible symbol conflict with libestdc++
CONFIGURE_ARGS+=	--with-execinfo=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make menuselect'
# before building.

## multipackages:
.include <bsd.port.arch.mk>

# calendar
COMMENT-calendar=	calendar support for Asterisk
WANTLIB-calendar=	crypto expat ical iconv intl iksemel lzma
WANTLIB-calendar+=	m neon proxy pthread ssl xml2 z
LIB_DEPENDS-calendar=	devel/gettext,-runtime \
			net/neon \
			textproc/libical
.if !${BUILD_PACKAGES:M-calendar}
CONFIGURE_ARGS+=	--with-ical=no
.endif

# http_post
COMMENT-http_post=	HTTP POST support for Asterisk
LIB_DEPENDS-http_post=	devel/gettext,-runtime \
			mail/gmime30
WANTLIB-http_post=	gio-2.0 glib-2.0 gmime-3.0 gobject-2.0 intl pthread
.if !${BUILD_PACKAGES:M-http_post}
CONFIGURE_ARGS+=	--with-gmime=no
.endif

# ldap
COMMENT-ldap=		LDAP support for Asterisk
LIB_DEPENDS-ldap=	databases/openldap,-main
WANTLIB-ldap=		ldap pthread
.if !${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--with-ldap=no
.endif

# freetds
COMMENT-tds=		MSSQL/Sybase support for Asterisk
LIB_DEPENDS-tds=	databases/freetds
WANTLIB-tds=		pthread sybdb
.if !${BUILD_PACKAGES:M-tds}
CONFIGURE_ARGS+=	--with-tds=no
.else
CONFIGURE_ARGS+=	--with-tds=${LOCALBASE}
.endif

# kqueue
COMMENT-kqueue=		kqueue-backed timer for Asterisk
LIB_DEPENDS-kqueue=
WANTLIB-kqueue=		pthread

# lua
MODULES=		lang/lua
MODLUA_SA=		yes
MODLUA_RUNDEP=		no
MODLUA_VERSION=		5.3
COMMENT-lua=		lua support for Asterisk
LIB_DEPENDS-lua=	${MODLUA_LIB_DEPENDS}
WANTLIB-lua=		${MODLUA_WANTLIB} m pthread
.if !${BUILD_PACKAGES:M-lua}
CONFIGURE_ARGS+=	--with-lua=no
MODLUA_BUILDDEP=	no
.else
CONFIGURE_ARGS+=	--with-lua
CONFIGURE_ENV+=		LUA_VERSIONS="${MODLUA_VERSION}"
.endif

# odbc
COMMENT-odbc=		ODBC support for Asterisk
LIB_DEPENDS-odbc=	databases/iodbc
WANTLIB-odbc=		iodbc pthread
.if !${BUILD_PACKAGES:M-odbc}
CONFIGURE_ARGS+=	--with-iodbc=no \
			--with-ltdl=no
.endif

# postgresql
COMMENT-pgsql=		PostgreSQL support for Asterisk
WANTLIB-pgsql=		pq pthread z
LIB_DEPENDS-pgsql=	databases/postgresql
.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-postgres=no
.endif

# snmp
COMMENT-snmp=		Net-SNMP support for Asterisk
WANTLIB-snmp=		crypto kvm m netsnmp netsnmpagent netsnmpmibs pthread
LIB_DEPENDS-snmp=	net/net-snmp
.if !${BUILD_PACKAGES:M-snmp}
CONFIGURE_ARGS+=	--with-snmp=no
.endif

# speex
COMMENT-speex=		Speex codec for Asterisk
WANTLIB-speex=		m ogg pthread speex speexdsp
LIB_DEPENDS-speex=	audio/speex>=1.2rc1
.if !${BUILD_PACKAGES:M-speex}
CONFIGURE_ARGS+=	--with-speex=no
.endif

.if ${MULTI_PACKAGES:M-vm_imap}
# vm_imap
COMMENT-vm_imap=	IMAP voicemail support for Asterisk
LIB_DEPENDS-vm_imap=	mail/alpine,-c-client
WANTLIB-vm_imap=		c-client crypto pthread ssl
.  if !${BUILD_PACKAGES:M-vm_imap}
CONFIGURE_ARGS+=	--with-imap=no
.  else
CONFIGURE_ARGS+=	--with-imap=system
CPPFLAGS+=		-I${LOCALBASE}/include/c-client
MENUSELECT+=		--enable app_voicemail_imap
.  endif
.endif

.if ${MULTI_PACKAGES:M-vm_imap}
# vm_odbc
COMMENT-vm_odbc=	ODBC voicemail support for Asterisk
LIB_DEPENDS-vm_odbc=	databases/iodbc
WANTLIB-vm_odbc=	iodbc pthread
.  if ${BUILD_PACKAGES:M-vm_odbc}
MENUSELECT+=		--enable app_voicemail_odbc
.  endif
.endif

NO_TEST=		Yes
INSTALL_TARGET=		install install-headers samples
EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
EXAMPLEFILES=		cdr.conf extensions.ael extensions.conf logger.conf \
			modules.conf musiconhold.conf sip.conf voicemail.conf

PKGSPEC-main=		asterisk-${VERSION_SPEC}

.for i in ${MULTI_PACKAGES:N-main}
PKGNAME$i ?=		asterisk$i-${VER}
RUN_DEPENDS$i +=	telephony/asterisk/${SHORTVER}=${VER}
.endfor

# some of the patches have MS-DOS line endings which patch doesn't like.
# done before actual patch, because we have libressl patches for one of the
# files that asterisk is patching.
FIX_CRLF_FILES=		third-party/pjproject/patches/*patch \
			third-party/pjproject/source/pjlib/build/*vc*proj*

post-extract:
	@cd ${WRKSRC}/third-party/; \
	    grep 'PJPROJECT_VERSION = ${PJ_V}$$' versions.mak > /dev/null || \
	    (echo "PJ_V != PJPROJECT_VERSION; update in port"; \
	     grep 'PJPROJECT_VERSION' versions.mak; exit 1)
	mv ${WRKDIR}/pjproject-${PJ_V} ${WRKSRC}/third-party/pjproject/source

post-patch:
	@echo '/!\ upstream patches to pjproject are applied in pre-configure'

pre-configure:
	cd ${WRKSRC}/third-party/pjproject/source; \
	    [ -r .unpacked ] || ../../apply_patches ../patches .
	touch ${WRKSRC}/third-party/pjproject/source/.unpacked

post-configure:
	@cd ${WRKSRC}; ${MAKE_PROGRAM} menuselect.makeopts; cp menuselect.makeopts{,.orig}
.if defined(MENUSELECT)
	@echo "enabling menuselect options: ${MENUSELECT}"
	cd ${WRKSRC}; menuselect/menuselect ${MENUSELECT}
	@echo "menuselect options available/not enabled:"
	@cd ${WRKSRC}; diff -u0 menuselect.makeopts{.orig,} || true
.endif

menuselect: configure
	@cd ${WRKSRC}; ${_PBUILD} ${MAKE_PROGRAM} menuselect

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README*,UPGRADE*.txt} \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/*.{pdf,txt} \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/basic-pbx
	${INSTALL_DATA} ${WRKSRC}/configs/basic-pbx/* ${EXAMPLEDIR}/basic-pbx
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
.for i in ${EXAMPLEFILES}
	@${SUBST_CMD} -c -m 444 ${FILESDIR}/$i.sample \
	    ${EXAMPLEDIR}/openbsd/$i.sample
.endfor
	${INSTALL_DATA} ${WRKSRC}/contrib/scripts/asterisk.ldif \
	    ${WRKSRC}/contrib/scripts/asterisk.ldap-schema \
	    ${PREFIX}/share/examples/asterisk/
	@sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${PREFIX}/sbin/astversion
	@mv ${WRKINST}/${SYSCONFDIR}/asterisk ${EXAMPLEDIR}/default
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}
	@rm -rf ${WRKINST}/{etc,var/{log,run,spool}}/asterisk
	@rm ${PREFIX}/lib/libasterisk{pj,ssl}.so
	@find ${WRKINST}/opt -type d -delete
