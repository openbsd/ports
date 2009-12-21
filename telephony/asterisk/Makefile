# $OpenBSD: Makefile,v 1.69 2009/12/21 00:19:02 fgsch Exp $

SHARED_ONLY=		Yes
COMMENT-main=		open source multi-protocol PBX and telephony toolkit

VER=			1.6.0.20
# you can set PATCHVER=p0, p1 etc to bump everything,
# this takes care of the subpackage/flavor maze
PATCHVER=		p0
CORESOUNDS=		1.4.16
DISTNAME=		asterisk-${VER:S/rc/-rc/}
FULLPKGNAME-main=	asterisk-${VER}${PATCHVER}

CATEGORIES=		telephony

HOMEPAGE=		http://www.asterisk.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Mostly GPL v2 (only). "Specific permission is also granted to link
# Asterisk with OpenSSL and OpenH323 and distribute the resulting binary
# files." core-sounds-*: GPLv2/CC-BY-SA.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES+=	-main
SUBST_VARS+=		CORESOUNDS

WANTLIB-main=		c crypto m pthread ssl stdc++ termcap z
LIB_DEPENDS-main=	gsm::audio/gsm \
			ogg.>=5::audio/libogg \
			vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
			sqlite3.>=3::databases/sqlite3 \
			execinfo::devel/libexecinfo \
			popt::devel/popt

MASTER_SITES=	http://downloads.digium.com/pub/telephony/asterisk/releases/ \
		http://downloads.digium.com/pub/telephony/asterisk/old-releases/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	autoconf
# Should be 2.63(?)
AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CPPFLAGS+=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS+= 		-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"
MAKE_ENV+=		ASTCFLAGS="${CFLAGS}" \
			ASTLDFLAGS="${LDFLAGS}" \
			NOISY_BUILD="Yes"

# basic stuff
CONFIGURE_ARGS+=	--localstatedir=/var \
			--sharedstatedir=${PREFIX}/share/asterisk
# unlikely
CONFIGURE_ARGS+=	--with-asound=no \
			--with-avcodec=no \
			--with-cap=no \
			--with-dahdi=no \
			--with-gtk=no \
			--with-gtk2=no \
			--with-gmime=no \
			--with-isdnnet=no \
			--with-misdn=no \
			--with-nbs=no \
			--with-newt=no \
			--with-osptk=no \
			--with-oss=no \
			--with-pri=no \
			--with-sqlite=no \
			--with-ss7=no \
			--with-suppserv=no \
			--with-tinfo=no \
			--with-tonezone=no \
			--with-usb=no \
			--with-vpb=no

# sometime?
CONFIGURE_ARGS+=	--with-imap=no \
			--with-jack=no \
			--with-lua=no \
			--with-portaudio=no \
			--with-radius=no \
			--with-resample=no \
			--with-sdl=no \
			--with-SDL_image=no \
			--with-tds=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make configure', cd
# to WRKSRC, 'gmake menuselect', then cd back to the port directory
# and 'make'.

FLAVOR?=
FLAVORS=		h323

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--with-iodbc=no \
			--with-ltdl=no
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		ODBC support for Asterisk
LIB_DEPENDS-odbc=	iodbc.>=3::databases/iodbc
CONFIGURE_ARGS+=	--with-iodbc=${LOCALBASE} \
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
CONFIGURE_ARGS+=	--with-speex=no
#.else
#MULTI_PACKAGES+=	-speex
#COMMENT-speex=		Speex codec for Asterisk
#WANTLIB-speex=		m
#LIB_DEPENDS-speex=	speex.>=7:speex->=1.2rc1:audio/speex \
#			speexdsp:speex->=1.2rc1:audio/speex
#CONFIGURE_ARGS+=	--with-speex=${LOCALBASE} \
#			--with-speexdsp=${LOCALBASE}
#.endif

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
CONFIGURE_ARGS+=	--with-iksemel=no
.else
MULTI_PACKAGES+=	-jabber
COMMENT-jabber=		Jabber support for Asterisk
LIB_DEPENDS-jabber=	iksemel::textproc/iksemel
.endif

# h323
.if ${FLAVOR:L:Mh323}
LIB_DEPENDS-main+=	h323::net/openh323 \
			pt::devel/pwlib
WANTLIB-main+=		SDL avutil expat lber ldap ldap_r sasl2
FULLPKGNAME-main=	asterisk-${VER}${PATCHVER}-h323
.else
CONFIGURE_ARGS+=	--with-pwlib=no \
			--with-h323=no
.endif

# ldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--with-ldap=no
.else
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		LDAP support for Asterisk
LIB_DEPENDS-ldap=	ldap::databases/openldap,-main
.endif

# fax
PSEUDO_FLAVORS+=	no_fax
.if ${FLAVOR:L:Mno_fax}
CONFIGURE_ARGS+=	--with-spandsp=no
.else
MULTI_PACKAGES+=	-fax
COMMENT-fax=		FAX support for Asterisk
LIB_DEPENDS-fax=	spandsp::telephony/spandsp \
			tiff::graphics/tiff
.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	asterisk$i-${VER}${PATCHVER}
RUN_DEPENDS$i +=	:asterisk-${VER}:${PKGPATH}
.endfor

NO_REGRESS=		Yes
INSTALL_TARGET=		install samples
EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
EXAMPLEFILES=		extensions.ael extensions.conf logger.conf \
			modules.conf musiconhold.conf sip.conf voicemail.conf

post-patch:
	cd ${WRKSRC}; \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    ./bootstrap.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README,UPGRADE*.txt} \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} `find ${WRKSRC}/doc -type f` \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
.for i in ${EXAMPLEFILES}
	@${SUBST_CMD} -c ${FILESDIR}/$i.sample \
	    ${EXAMPLEDIR}/openbsd/$i.sample
.endfor
	@mv ${WRKINST}/${SYSCONFDIR}/asterisk ${EXAMPLEDIR}/default
	@mv ${WRKINST}/var/spool/asterisk/voicemail ${EXAMPLEDIR}/voicemail
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}
	@rm -rf ${WRKINST}/{etc,var/{log,run,spool}}/asterisk

.include <bsd.port.mk>
