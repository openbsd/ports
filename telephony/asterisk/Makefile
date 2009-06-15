# $OpenBSD: Makefile,v 1.56 2009/06/15 23:33:57 sthen Exp $

SHARED_ONLY=		Yes
COMMENT-main=		open source multi-protocol PBX and telephony toolkit

V=			1.4.25.1
CORESOUNDS=		1.4.15
DISTNAME=		asterisk-$V
FULLPKGNAME-main=	asterisk-$Vp0
# N.B. overridden for h323 flavor below.

CATEGORIES=		telephony

HOMEPAGE=		http://www.asterisk.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." iaxy.bin (firmware) is freely redistributable, see LICENSE.
# core-sounds-en-gsm: GPLv2/CC-BY-SA, http://bugs.digium.com/view.php?id=10144
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main
SUBST_VARS+=		CORESOUNDS

WANTLIB-main=		c crypto m pthread ssl stdc++ termcap z

LIB_DEPENDS-main=	popt::devel/popt \
			gsm::audio/gsm

MASTER_SITES=		http://downloads.asterisk.org/pub/telephony/asterisk/releases/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-asterisk-user=_asterisk \
			--with-asterisk-group=_asterisk \
			--localstatedir=/var \
			--sharedstatedir=${PREFIX}/share/asterisk \
			--with-asound=no \
			--with-isdnnet=no \
			--with-kde=no \
			--with-misdn=no \
			--with-nbs=no \
			--with-newt=no \
			--with-popt=${LOCALBASE} \
			--with-pri=no \
			--with-qt=no \
			--with-suppserv=no \
			--with-tinfo=no \
			--with-tonezone=no \
			--with-vpb=no \
			--with-zaptel=no

CONFIGURE_ARGS+=	--with-osptk=no \
			--with-oss=no \
			--with-radius=no \
			--with-sqlite=no \
			--with-tds=no \
			--with-imap=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make configure', cd
# to WRKSRC, 'gmake menuselect', then cd back to the port directory
# and 'make'.

FLAVOR?=
FLAVORS=		h323

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--with-odbc=no \
			--with-ltdl=no
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		ODBC support for Asterisk
LIB_DEPENDS-odbc=	iodbc.>=3::databases/iodbc
CONFIGURE_ARGS+=	--with-odbc=${LOCALBASE} \
			--with-ltdl=${LOCALBASE}
.endif

# snmp
PSEUDO_FLAVORS+=	no_snmp
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--with-snmp=no
.else
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		Net-SNMP support for Asterisk
WANTLIB-snmp=		c m perl util
LIB_DEPENDS-snmp=	netsnmp.>=7::net/net-snmp \
			netsnmpagent.>=7::net/net-snmp \
			netsnmphelpers.>=7::net/net-snmp \
			netsnmpmibs.>=7::net/net-snmp
CONFIGURE_ARGS+=	--with-netsnmp=${LOCALBASE}
.endif

# speex
# XXX crashes at startup (bus error)
#PSEUDO_FLAVORS+=	no_speex
#.if ${FLAVOR:L:Mno_speex}
#CONFIGURE_ARGS+=	--with-speex=no
#.else
#MULTI_PACKAGES+=	-speex
#COMMENT-speex=		Speex codec for Asterisk
#WANTLIB-speex=		m
#LIB_DEPENDS-speex=	speex.>=7:speex->=1.2rc1:audio/speex \
#			speexdsp:speex->=1.2rc1:audio/speex
#CONFIGURE_ARGS+=	--with-speex=${LOCALBASE} \
#			--with-speexdsp=${LOCALBASE}
#.endif

# ogg
PSEUDO_FLAVORS+=	no_ogg
.if ${FLAVOR:L:Mno_ogg}
CONFIGURE_ARGS+=	--with-ogg=no \
			--with-vorbis=no
.else
MULTI_PACKAGES+=	-ogg
COMMENT-ogg=		Ogg Vorbis format translator for Asterisk
WANTLIB-ogg=		m
LIB_DEPENDS-ogg=	ogg.>=5::audio/libogg \
			vorbis.>=5::audio/libvorbis \
			vorbisenc.>=2::audio/libvorbis
CONFIGURE_ARGS+=	--with-ogg=${LOCALBASE} \
			--with-vorbis=${LOCALBASE}
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--with-curl=no
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		libCURL support for Asterisk
WANTLIB-curl=		crypto idn ssl z
LIB_DEPENDS-curl=	curl.>=6::net/curl
CONFIGURE_ARGS+=	--with-curl=${LOCALBASE}
.endif

# postgresql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--with-postgres=no
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		PostgreSQL support for Asterisk
WANTLIB-pgsql=		z
LIB_DEPENDS-pgsql=	pq.>=5::databases/postgresql
CONFIGURE_ARGS+=	--with-postgres=${LOCALBASE}
.endif

# jabber
PSEUDO_FLAVORS+=	no_jabber
.if ${FLAVOR:L:Mno_jabber}
CONFIGURE_ARGS+=	--with-gnutls=no \
			--with-iksemel=no
.else
MULTI_PACKAGES+=	-jabber
COMMENT-jabber=		Jabber support for Asterisk
WANTLIB-jabber=		gcrypt gnutls gpg-error z
LIB_DEPENDS-jabber=	iksemel::textproc/iksemel
CONFIGURE_ARGS+=	--with-gnutls=${LOCALBASE} \
			--with-iksemel=${LOCALBASE}
.endif

# h323
.if ${FLAVOR:L:Mh323}
LIB_DEPENDS-main+=	h323::net/openh323 \
			pt::devel/pwlib
CPPFLAGS+=		-I${LOCALBASE}/include/openh323
CONFIGURE_ARGS+=	--with-pwlib=${LOCALBASE}/lib \
			--with-h323=${LOCALBASE}/lib
WANTLIB-main+=		SDL avutil expat lber ldap ldap_r sasl2
FULLPKGNAME-main=	asterisk-$Vp0-h323

pre-build:
	cd ${WRKSRC} && ${MAKE_PROGRAM} include/asterisk/buildopts.h
	cd ${WRKSRC}/channels/h323 && ${MAKE_PROGRAM} opt

.else
CONFIGURE_ARGS+=	--with-pwlib=no \
			--with-h323=no
.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	asterisk$i-$V
RUN_DEPENDS$i +=	:asterisk-$V:telephony/asterisk
.endfor

MAKE_ENV=		ASTCFLAGS="${CFLAGS}" \
			ASTLDFLAGS="${LDFLAGS}" \
			DEBUG=""

NO_REGRESS=		Yes

INSTALL_TARGET=		install samples

EXAMPLEDIR=		${PREFIX}/share/examples/asterisk

post-patch:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} aclocal -I autoconf
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} automake \
	    --add-missing --copy || true

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README,UPGRADE.txt} \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} `find ${WRKSRC}/doc -type f` \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
	${INSTALL_DATA} ${FILESDIR}/*.sample ${EXAMPLEDIR}/openbsd
	@perl -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|g;" \
		${EXAMPLEDIR}/openbsd/*
	@mv ${WRKINST}/${SYSCONFDIR}/asterisk ${EXAMPLEDIR}/default
	@mv ${WRKINST}/var/spool/asterisk/voicemail ${EXAMPLEDIR}/voicemail
	@rm -rf ${WRKINST}/{etc,var/{log,run,spool}}/asterisk

.include <bsd.port.mk>
