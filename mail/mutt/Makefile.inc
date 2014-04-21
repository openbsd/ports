# $OpenBSD: Makefile.inc,v 1.45 2014/04/21 18:57:49 sthen Exp $

CATEGORIES=	mail

HOMEPAGE=	http://www.mutt.org/

MASTER_SITES_MUTT= ftp://ftp.mutt.org/mutt/ \
		   ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
		   ftp://ftp.gbnet.net/pub/mutt-international/ \
		   ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/

MASTER_SITES0=	http://www.spinnaker.de/mutt/compressed/
MASTER_SITES1=	http://lunar-linux.org/~tchan/mutt/
MASTER_SITES2=	http://spacehopper.org/mutt/
DIST_SUBDIR=	mutt

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MODULES=	devel/gettext

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c crypto ssl

FLAVORS+=	slang mixmaster compressed
FLAVOR?=

CONFIGURE_STYLE= autoconf old
AUTOCONF_VERSION?= 2.61
CONFIGURE_ARGS+=--enable-external_dotlock \
		--enable-flock \
		--enable-imap \
		--enable-pop \
		--disable-fcntl \
		--mandir=${PREFIX}/man \
		--sysconfdir=${CONFDIR} \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--with-ssl
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/mutt"
PATCH_DIST_STRIP= -p1

.if defined(DEBUG)
CONFIGURE_ARGS+=--enable-debug
.endif

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"

.if ${FLAVOR:Mslang}
LIB_DEPENDS+=		devel/libslang
CONFIGURE_ARGS+=	--with-slang="${PREFIX}"
WANTLIB+=		m termlib slang>=14
.else
CONFIGURE_ARGS+=	--with-curses
WANTLIB+=		ncurses
.endif

# compressed folder support
DIST_COMPRESSED?=	patch-${VERSION}.rr.compressed.1.gz:0
.if ${FLAVOR:Mcompressed}
PATCHFILES+=		${DIST_COMPRESSED}
CONFIGURE_ARGS+=	--enable-compressed
.else
SUPDISTFILES+=		${DIST_COMPRESSED}
.endif

.if ${FLAVOR:Mmixmaster}
CONFIGURE_ARGS+=	--with-mixmaster="${LOCALBASE}/sbin/mixmaster"
RUN_DEPENDS+=		mail/mixmaster
.endif

.if ${FLAVOR:Midn}
CONFIGURE_ARGS+=	--with-idn
LIB_DEPENDS+=		devel/libidn
WANTLIB+=		idn>=16
.else
CONFIGURE_ARGS+=	--without-idn
.endif

.if defined(HOMESPOOL)
CONFIGURE_ARGS+=	--with-homespool="${HOMESPOOL}"
.endif

.if defined(DOMAIN)
CONFIGURE_ARGS+=	--with-domain="${DOMAIN}"
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/i$//}
CONFDIR=	${SYSCONFDIR}/mutt
SUBST_VARS=	CONFDIR
MUTTRCDIR?=

post-install:
	@mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	@perl -pi -e "s,/etc/Muttrc,${CONFDIR}/Muttrc," ${PREFIX}/man/man1/mutt.1
	@perl -pi -e "s,/etc/mime.types,${CONFDIR}/mime.types," ${PREFIX}/man/man1/mutt.1
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/mutt/gpg.rc
