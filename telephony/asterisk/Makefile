# $OpenBSD: Makefile,v 1.201 2014/06/12 22:39:12 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		open source multi-protocol PBX and telephony toolkit

VER=			11.10.1
DISTNAME=		asterisk-${VER:S/beta/-beta/:S/rc/-rc/}
PKGNAME-main=		asterisk-${VER}

CATEGORIES=		telephony

HOMEPAGE=		http://www.asterisk.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." iLBC codec has BSD-like license terms, but also see patent
# notes in codecs/ilbc/LICENSE_ADDENDUM.
PERMIT_PACKAGE_CDROM=	patent licensing clauses
PERMIT_PACKAGE_FTP=	Yes

WANTLIB-main += avcodec avformat avutil c crypto curl execinfo gsm idn
WANTLIB-main += iksemel m ogg opencore-amrnb portaudio pthread spandsp
WANTLIB-main += sqlite3 ssl stdc++ swscale termcap tiff uuid vorbis
WANTLIB-main += vorbisenc vorbisfile xml2 z ${MODGETTEXT_WANTLIB}

SHARED_LIBS=		asteriskssl 0.0		# 1

MODULES=		devel/gettext

MULTI_PACKAGES=		-main -calendar -http_post -ldap -odbc \
			-pgsql -snmp -speex -tds
PSEUDO_FLAVORS=		no_calendar no_http_post no_ldap no_odbc \
			no_pgsql no_snmp no_speex no_tds

LIB_DEPENDS-main=	audio/gsm \
			audio/libogg \
			audio/libvorbis \
			audio/opencore-amr \
			audio/portaudio-svn \
			devel/libexecinfo \
			graphics/ffmpeg \
			graphics/tiff \
			net/curl \
			sysutils/e2fsprogs \
			telephony/spandsp \
			textproc/iksemel \
			textproc/libxml \
			${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			telephony/asterisk-sounds/core-sounds/en,gsm>=1.4.25 \
			telephony/asterisk-sounds/moh-opsound,wav
BUILD_DEPENDS=		security/libsrtp>=1.4.4 # statically linked

MASTER_SITES=	http://downloads.asterisk.org/pub/telephony/asterisk/releases/ \
		http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.10
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool,-ltdl # bogus dependencies in menuselect

CPPFLAGS+=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS+=		-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			LIBS="-lpthread" \
			ac_cv_path_LDCONFIG=:
MAKE_FLAGS+=		ASTCFLAGS="${CFLAGS}" \
			ASTLDFLAGS="${LDFLAGS}" \
			ASTSSL_SO_VERSION="${LIBasteriskssl_VERSION}" \
			NOISY_BUILD="Yes" \
			OPTIMIZE=

CONFIGURE_ARGS+=	--localstatedir=/var

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

# calendar
COMMENT-calendar=	calendar support for Asterisk
WANTLIB-calendar=	${MODGETTEXT_WANTLIB} crypto expat ical iksemel
WANTLIB-calendar+=	m neon proxy ssl xml2 z

LIB_DEPENDS-calendar=	net/neon \
			textproc/libical \
			${MODGETTEXT_LIB_DEPENDS}
.if !${BUILD_PACKAGES:M-calendar}
CONFIGURE_ARGS+=	--with-ical=no
.endif

# http_post
COMMENT-http_post=	HTTP POST support for Asterisk
LIB_DEPENDS-http_post=	mail/gmime ${MODGETTEXT_LIB_DEPENDS}
WANTLIB-http_post=	gio-2.0 glib-2.0 gmime-2.6 gobject-2.0 \
			${MODGETTEXT_WANTLIB}
.if !${BUILD_PACKAGES:M-http_post}
CONFIGURE_ARGS+=	--with-gmime=no
.endif

# ldap
COMMENT-ldap=		LDAP support for Asterisk
LIB_DEPENDS-ldap=	databases/openldap,-main
WANTLIB-ldap=		ldap
.if !${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--with-ldap=no
.endif

# freetds
COMMENT-tds=		LDAP support for Asterisk
LIB_DEPENDS-tds=	databases/freetds
WANTLIB-tds=		sybdb
.if !${BUILD_PACKAGES:M-tds}
CONFIGURE_ARGS+=	--with-tds=no
.else
CONFIGURE_ARGS+=	--with-tds=${LOCALBASE}
.endif

# mysql				need to handle building addons/ first XXX
# up above .include <bsd.port.arch.mk>
#PSEUDO_FLAVORS+=	no_mysql
#MULTI_PACKAGES+=	-mysql
#
#COMMENT-mysql=		MySQL support for Asterisk
#WANTLIB-mysql=		mysqlclient
#LIB_DEPENDS-mysql=	databases/mysql
#.if !${BUILD_PACKAGES:M-mysql}
#CONFIGURE_ARGS+=	--with-mysqlclient=no
#.endif

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
WANTLIB-pgsql=		pq z
LIB_DEPENDS-pgsql=	databases/postgresql
.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-postgres=no
.endif

# snmp
COMMENT-snmp=		Net-SNMP support for Asterisk
WANTLIB-snmp=		m netsnmp netsnmpagent netsnmpmibs crypto kvm
LIB_DEPENDS-snmp=	net/net-snmp
.if !${BUILD_PACKAGES:M-snmp}
CONFIGURE_ARGS+=	--with-snmp=no
.endif

# speex
COMMENT-speex=		Speex codec for Asterisk
WANTLIB-speex=		m speex speexdsp
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

post-patch:
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
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
.for i in ${EXAMPLEFILES}
	@${SUBST_CMD} -c ${FILESDIR}/$i.sample \
	    ${EXAMPLEDIR}/openbsd/$i.sample
.endfor
	${INSTALL_DATA} ${WRKSRC}/contrib/scripts/asterisk.ldif \
		${WRKSRC}/contrib/scripts/asterisk.ldap-schema \
		${PREFIX}/share/examples/asterisk/
	@mv ${WRKINST}/${SYSCONFDIR}/asterisk ${EXAMPLEDIR}/default
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}
	@rm -rf ${WRKINST}/{etc,var/{log,run,spool}}/asterisk

.include <bsd.port.mk>
