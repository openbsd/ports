# $OpenBSD: Makefile,v 1.321 2020/07/11 22:54:40 sthen Exp $

COMMENT-main=	open source multi-protocol PBX and telephony toolkit

VER=		16.11.1
PJ_V=		2.9
DISTNAME=	asterisk-${VER:S/beta/-beta/:S/rc/-rc/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} pjproject-${PJ_V}.tar.bz2:0
PKGNAME-main=	asterisk-${VER}
REVISION=	0

.if ${MACHINE_ARCH} == i386
# i386 issue linking libasteriskpj.so.0.0:
# ld: error: cli_telnet.c:(.debug_info+0x1DF087): has non-ABS relocation R_386_GOTOFF against symbol 'CR_LF.6215'
USE_LLD=		No
.endif

CATEGORIES=	telephony

HOMEPAGE=	https://www.asterisk.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." iLBC codec has BSD-like license terms, but also see patent
# notes in codecs/ilbc/LICENSE_ADDENDUM.
PERMIT_PACKAGE=	Yes

WANTLIB-main += ${MODGCC4_CPPWANTLIB}
# XXX somehow COMPILER_LIBCXX doesn't get set to gcc libs?
WANTLIB-main += c crypto curl curses edit execinfo gsm iconv iksemel
WANTLIB-main += jansson lzma m nghttp2 ogg portaudio pthread radcli
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
# -> undefined reference to `_NSConcreteGlobalBlock'
#
# - runtime fails on ld.lld arches: dlopen()ing the .so modules results in
# undefined symbols from the BlocksRuntime lib.
#
# So, as things stand, this requires building with gcc.
#
# If changing this, keep telephony/asterisk-g729 in sync.
COMPILER=		ports-gcc

SHARED_LIBS+=		asteriskssl 0.0		# 1
SHARED_LIBS+=		asteriskpj 0.0		# 2

MULTI_PACKAGES=		-main -calendar -http_post -kqueue -ldap -lua \
			-odbc -pgsql -snmp -speex -tds
PSEUDO_FLAVORS=		${MULTI_PACKAGES:N-main:N-kqueue:C/-/no_/g}

LIB_DEPENDS-main=	${MODGCC4_CPPLIBDEP} \
			audio/gsm \
			audio/libogg \
			audio/libvorbis \
			audio/portaudio-svn \
			converters/libiconv \
			databases/sqlite3 \
			devel/libexecinfo \
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
CONFIGURE_ENV+=		PJPROJECT_CONFIGURE_OPTS="--disable-bcg729"
MAKE_ENV=		LOCALBASE="${LOCALBASE}"

CONFIGURE_ARGS+=	--with-asound=no \
			--with-bfd=no \
			--with-bluetooth=no \
			--with-cap=no \
			--with-codec2=no \
			--with-cpg=no \
			--with-dahdi=no \
			--with-avcodec=no \
			--with-gtk2=no \
			--with-h323=no \
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
			--with-beanstalk=no \
			--with-portaudio=${LOCALBASE} \
			--with-pri=no \
			--with-fftw3=no \
			--with-resample=no \
			--with-sndfile=no \
			--with-sdl=no \
			--with-SDL_image=no \
			--with-sqlite=no \
			--with-ss7=no \
			--with-suppserv=no \
			--with-tonezone=no \
			--with-vpb=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make menuselect'
# before building.

FLAVOR?=
FLAVORS=		imap

## flavours:

.if ${FLAVOR:Mimap}
CONFIGURE_ARGS+=	--with-imap=system
MAKE_FLAGS+=		MENUSELECT_OPTS_app_voicemail=IMAP_STORAGE
CPPFLAGS+=		-I${LOCALBASE}/include/c-client
LIB_DEPENDS-main+=	mail/alpine,-c-client
WANTLIB-main+=		c-client
.else
CONFIGURE_ARGS+=	--with-imap=no
.endif

## multipackages:
.include <bsd.port.arch.mk>

#.if ${PROPERTIES:Mclang}
#BUILD_DEPENDS+=		devel/blocksruntime
#.endif

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
			mail/gmime
WANTLIB-http_post=	gio-2.0 glib-2.0 gmime-2.6 gobject-2.0 intl pthread
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

NO_TEST=		Yes
INSTALL_TARGET=		install samples
EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
EXAMPLEFILES=		cdr.conf extensions.ael extensions.conf logger.conf \
			modules.conf musiconhold.conf sip.conf voicemail.conf

.for i in ${MULTI_PACKAGES:N-main}
# subpackages aren't flavoured, so overwrite the default name/path
FULLPKGNAME$i ?=	asterisk$i-${VER}
FULLPKGPATH$i ?=	${PKGPATH},$i
RUN_DEPENDS$i +=	asterisk-${VER}:telephony/asterisk
.endfor

# otherwise asterisk patchset for pjsua gets in the way
PATCHORIG=		.orig.port

post-extract:
	@cd ${WRKSRC}/third-party/; \
	    grep 'PJPROJECT_VERSION = ${PJ_V}$$' versions.mak > /dev/null || \
	    (echo "PJ_V != PJPROJECT_VERSION; update in port"; \
	     grep 'PJPROJECT_VERSION' versions.mak; exit 1)
	mv ${WRKDIR}/pjproject-${PJ_V} ${WRKSRC}/third-party/pjproject/source

# some of the patches have MS-DOS line endings which patch doesn't like.
# done before actual patch, because we have libressl patches for one of the
# files that asterisk is patching.
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/third-party/pjproject/patches/*patch \
	    ${WRKSRC}/third-party/pjproject/source/pjlib/build/*vc*proj*

post-patch:
	cd ${WRKSRC}/third-party/pjproject/source; ../../apply_patches ../patches .
	touch ${WRKSRC}/third-party/pjproject/source/.unpacked

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

.include <bsd.port.mk>
