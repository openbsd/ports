# $OpenBSD: Makefile,v 1.264 2017/09/21 10:11:16 sthen Exp $

BROKEN-aarch64=	linker problems with BlocksRuntime that only show up at runtime

COMMENT-main=	open source multi-protocol PBX and telephony toolkit

VER=		13.17.2
PJ_V=		2.6
PORTROACH=	limitw:0,odd
DISTNAME=	asterisk-${VER:S/beta/-beta/:S/rc/-rc/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} pjproject-${PJ_V}.tar.bz2:0
PKGNAME-main=	asterisk-${VER}

CATEGORIES=	telephony

HOMEPAGE=	http://www.asterisk.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." iLBC codec has BSD-like license terms, but also see patent
# notes in codecs/ilbc/LICENSE_ADDENDUM.
PERMIT_PACKAGE_CDROM=	patent licensing clauses
PERMIT_PACKAGE_FTP=	Yes

WANTLIB-main += ${MODGCC4_CPPWANTLIB}
WANTLIB-main += c crypto curl execinfo gsm iconv iksemel jansson lzma
WANTLIB-main += m nghttp2 ogg portaudio pthread spandsp sqlite3 ssl
WANTLIB-main += termcap tiff uriparser uuid vorbis vorbisenc vorbisfile
WANTLIB-main += xml2 xslt z

# XXX Requires either nested functions (gcc only), or -fblocks (clang).
#
# With clang -fblocks, configure test fails on ld.bfd arches:
#
#    echo 'int main(){return ^{return 42;}();}' | \
#         clang -o /tmp/blockstest -fblocks -x c -L/usr/local/lib -lBlocksRuntime -
#
# -> undefined reference to `_NSConcreteGlobalBlock'
#
# Runtime fails on ld.lld arches: dlopen()ing the .so modules results in
# undefined symbols from the BlocksRuntime lib.
#
# keep telephony/asterisk-g729 in sync with this
COMPILER =		base-gcc ports-gcc

SHARED_LIBS+=		asteriskssl 0.0		# 1
SHARED_LIBS+=		asteriskpj 0.0		# 2

MULTI_PACKAGES=		-main -calendar -http_post -ldap -odbc \
			-pgsql -snmp -speex -tds
PSEUDO_FLAVORS=		${MULTI_PACKAGES:N-main:C/-/no_/g}

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
			sysutils/e2fsprogs \
			telephony/spandsp \
			textproc/iksemel \
			textproc/libxml \
			textproc/libxslt \
			www/uriparser
RUN_DEPENDS-main=	telephony/asterisk-sounds/core-sounds/en,gsm>=1.4.25 \
			telephony/asterisk-sounds/moh-opsound,wav
BUILD_DEPENDS=		security/libsrtp>=1.4.4 # statically linked

MASTER_SITES=	https://downloads.asterisk.org/pub/telephony/asterisk/releases/ \
		https://downloads.asterisk.org/pub/telephony/asterisk/old-releases/
MASTER_SITES0=	http://www.pjsip.org/release/${PJ_V}/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			archivers/bzip2 \
			devel/libtool,-ltdl # bogus dependencies in menuselect

CPPFLAGS+=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS+=		-L${X11BASE}/lib -L${LOCALBASE}/lib
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
			--with-externals-cache=${FULLDISTDIR} \
			--with-pjproject-bundled

CONFIGURE_ARGS+=	--with-asound=no \
			--with-cap=no \
			--with-dahdi=no \
			--with-gtk2=no \
			--with-h323=no \
			--with-isdnnet=no \
			--with-misdn=no \
			--with-nbs=no \
			--with-newt=no \
			--with-osptk=no \
			--with-oss=no \
			--with-portaudio=${LOCALBASE} \
			--with-pri=no \
			--with-pwlib=no \
			--with-SDL_image=no \
			--with-sdl=no \
			--with-sqlite=no \
			--with-ss7=no \
			--with-suppserv=no \
			--with-tinfo=no \
			--with-tonezone=no \
			--with-vpb=no

CONFIGURE_ARGS+=	--with-jack=no \
			--with-lua=no \
			--with-radius=no \
			--with-resample=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make configure', cd
# to WRKSRC, 'gmake menuselect', then 'cd -' back to the port directory
# and 'make'.

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

LIB_DEPENDS-calendar=	devel/gettext \
			net/neon \
			textproc/libical
.if !${BUILD_PACKAGES:M-calendar}
CONFIGURE_ARGS+=	--with-ical=no
.endif

# http_post
COMMENT-http_post=	HTTP POST support for Asterisk
LIB_DEPENDS-http_post=	devel/gettext mail/gmime
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
WANTLIB-speex=		m pthread speex speexdsp
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

# some of the patches have MS-DOS line endings which patch doesn't like
post-extract:
	@cd ${WRKSRC}/third-party/; \
	    grep 'PJPROJECT_VERSION = ${PJ_V}$$' versions.mak > /dev/null || \
	    (echo "PJ_V != PJPROJECT_VERSION; update in port"; \
	     grep 'PJPROJECT_VERSION' versions.mak; exit 1)
	@perl -i -pe 's/\r$$//' ${WRKSRC}/third-party/pjproject/patches/*patch
	mv ${WRKDIR}/pjproject-${PJ_V} ${WRKSRC}/third-party/pjproject/source
	cd ${WRKSRC}/third-party/pjproject; ./apply_patches patches source
	touch ${WRKSRC}/third-party/pjproject/source/.unpacked

post-patch:
.if ${PROPERTIES:Mclang}
	sed -i.beforesubst -e 's, -ftrampolines,,' ${WRKSRC}/Makefile
.endif
	cd ${WRKSRC}; \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    ./bootstrap.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README*,UPGRADE*.txt} \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/doc/*.{pdf,txt,odt} \
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
	@mv ${WRKINST}/${SYSCONFDIR}/asterisk ${EXAMPLEDIR}/default
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}
	@rm -rf ${WRKINST}/{etc,var/{log,run,spool}}/asterisk

.include <bsd.port.mk>
