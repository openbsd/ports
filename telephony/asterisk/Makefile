# $OpenBSD: Makefile,v 1.90 2010/07/25 10:08:03 sthen Exp $

SHARED_ONLY=		Yes
COMMENT-main=		open source multi-protocol PBX and telephony toolkit

VER=			1.6.2.10
CORESOUNDS=		1.4.19
DISTNAME=		asterisk-${VER:S/rc/-rc/}
PKGNAME-main=		asterisk-${VER}

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

WANTLIB-main +=	c crypto execinfo gsm iconv m ogg popt pthread
WANTLIB-main += sqlite3 ssl stdc++ termcap vorbis vorbisenc xml2 z

LIB_DEPENDS-main=	::audio/gsm \
			::audio/libogg \
			::audio/libvorbis \
			::textproc/libxml \
			::databases/sqlite3 \
			::devel/libexecinfo \
			::devel/popt

MASTER_SITES=	http://downloads.digium.com/pub/telephony/asterisk/releases/ \
		http://downloads.digium.com/pub/telephony/asterisk/old-releases/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.63
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

CONFIGURE_ARGS+=	--localstatedir=/var \
			--sharedstatedir=${PREFIX}/share/asterisk \
			--with-sounds-cache=${DISTDIR}

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
			--with-SDL_image=no \
			--with-sdl=no \
			--with-sqlite=no \
			--with-ss7=no \
			--with-suppserv=no \
			--with-tinfo=no \
			--with-tonezone=no \
			--with-usb=no \
			--with-vpb=no

CONFIGURE_ARGS+=	--with-jack=no \
			--with-imap=no \
			--with-lua=no \
			--with-portaudio=no \
			--with-radius=no \
			--with-resample=no \
			--with-tds=no

# Some build options (including a useful malloc debug) are available
# via menuselect. They may be enabled by running 'make configure', cd
# to WRKSRC, 'gmake menuselect', then cd back to the port directory
# and 'make'.

FLAVOR?=
FLAVORS=		h323

# If using IMAP_STORAGE for voicemail, use this to pick up c-client.
# Needs to be a flavour, {FILE,ODBC,IMAP}_STORAGE are mutually exclusive.
#CONFIGURE_ARGS+=	--with-imap=system
#CPPFLAGS+=		-I${LOCALBASE}/include/c-client
#LIB_DEPENDS-main=	::mail/imap-uw,-c-client
#WANTLIB-main+=		c-client

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--with-iodbc=no \
			--with-ltdl=no
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		ODBC support for Asterisk
LIB_DEPENDS-odbc=	::databases/iodbc
WANTLIB-odbc=		iodbc
.endif

# snmp
PSEUDO_FLAVORS+=	no_snmp
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--with-snmp=no
.else
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		Net-SNMP support for Asterisk
WANTLIB-snmp=		c m netsnmp netsnmpagent netsnmphelpers netsnmpmibs perl util
LIB_DEPENDS-snmp=	::net/net-snmp 
.endif

# speex
PSEUDO_FLAVORS+=	no_speex
.if ${FLAVOR:L:Mno_speex}
CONFIGURE_ARGS+=	--with-speex=no
.else
MULTI_PACKAGES+=	-speex
COMMENT-speex=		Speex codec for Asterisk
WANTLIB-speex=		m speex speexdsp
LIB_DEPENDS-speex=	:speex->=1.2rc1:audio/speex
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--with-curl=no
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		libCURL support for Asterisk
WANTLIB-curl=		curl crypto idn ssl z
LIB_DEPENDS-curl=	::net/curl
.endif

# postgresql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--with-postgres=no
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		PostgreSQL support for Asterisk
WANTLIB-pgsql=		pq z
LIB_DEPENDS-pgsql=	::databases/postgresql
.endif

# jabber
PSEUDO_FLAVORS+=	no_jabber
.if ${FLAVOR:L:Mno_jabber}
CONFIGURE_ARGS+=	--with-iksemel=no
.else
MULTI_PACKAGES+=	-jabber
COMMENT-jabber=		Jabber support for Asterisk
LIB_DEPENDS-jabber=	::textproc/iksemel
WANTLIB-jabber=		crypto iksemel ssl
.endif

# h323
.if ${FLAVOR:L:Mh323}
LIB_DEPENDS-main+=	::net/h323plus
WANTLIB-main+=		SDL avutil expat h323.>=3 lber ldap ldap_r pt.>=3 sasl2
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
LIB_DEPENDS-ldap=	::databases/openldap,-main
WANTLIB-ldap=		ldap
.endif

# fax
PSEUDO_FLAVORS+=	no_fax
.if ${FLAVOR:L:Mno_fax}
CONFIGURE_ARGS+=	--with-spandsp=no
.else
MULTI_PACKAGES+=	-fax
COMMENT-fax=		FAX support for Asterisk
LIB_DEPENDS-fax=	::telephony/spandsp \
			::graphics/tiff
WANTLIB-fax=		spandsp tiff
.endif

NO_REGRESS=		Yes
INSTALL_TARGET=		install samples
EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
EXAMPLEFILES=		extensions.ael extensions.conf logger.conf \
			modules.conf musiconhold.conf sip.conf voicemail.conf

.for i in ${MULTI_PACKAGES:N-main}
# subpackages aren't flavoured, so overwrite the default name/path
FULLPKGNAME$i ?=	asterisk$i-${VER}
FULLPKGPATH$i ?=	${PKGPATH},$i
RUN_DEPENDS$i +=	:asterisk-${VER}:${PKGPATH}
.endfor

# we don't really want to drag in TeX as a dependency, but at least
# allow the icons in the HTML docs to work if you already have latex2html
# installed.
pre-configure:
	perl -pi -e 's,/usr/share/latex2html,${LOCALBASE}/share/latex2html,g' \
	    ${WRKSRC}/doc/tex/asterisk/*

post-patch:
	cd ${WRKSRC}; \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    ./bootstrap.sh

post-build:
	cd ${WRKBUILD}; ${MAKE_PROGRAM} asterisk.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asterisk
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README*,UPGRADE*.txt} \
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
