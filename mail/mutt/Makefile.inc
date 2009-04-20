# $OpenBSD: Makefile.inc,v 1.30 2009/04/20 07:43:21 sthen Exp $

CATEGORIES=	mail

HOMEPAGE=	http://www.mutt.org/

MASTER_SITES_MUTT= ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
		   ftp://ftp.mutt.org/mutt/ \
		   ftp://ftp.gbnet.net/pub/mutt-international/ \
		   ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/

MASTER_SITES0=	http://www.spinnaker.de/mutt/compressed/
MASTER_SITES1=	http://lunar-linux.org/~tchan/mutt/
DIST_SUBDIR=	mutt

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MODULES=	devel/gettext

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	c crypto des gssapi krb5 ssl

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
		--with-gss \
		--with-sharedir="${PREFIX}/share/mutt" \
		--with-ssl \

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=		slang.>=14::devel/libslang
CONFIGURE_ARGS+=	--with-slang="${PREFIX}"
WANTLIB+=		m termlib
.else
CONFIGURE_ARGS+=	--with-curses
WANTLIB+=		ncurses 
.endif

# compressed folder support
.if ${FLAVOR:L:Mcompressed}
PATCHFILES+=		patch-${VERSION}.rr.compressed.1.gz:0
PATCH_DIST_STRIP=	-p1
CONFIGURE_ARGS+=	--enable-compressed
.else
SUPDISTFILES+=		patch-${VERSION}.rr.compressed.1.gz:0
.endif

.if ${FLAVOR:L:Mmixmaster}
CONFIGURE_ARGS+=	--with-mixmaster="${LOCALBASE}/sbin/mixmaster"
RUN_DEPENDS+=		::mail/mixmaster
.endif

.if ${FLAVOR:L:Midn}
CONFIGURE_ARGS+=	--with-idn
LIB_DEPENDS+=		idn.>=16::devel/libidn
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mutt
	${INSTALL_DATA} ${WRKSRC}/${MUTTRCDIR}Muttrc \
		${PREFIX}/share/examples/mutt/Muttrc.sample
	${INSTALL_DATA} ${WRKDIST}/mime.types \
		${PREFIX}/share/examples/mutt/mime.types.sample
	@mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	@perl -pi -e "s,/etc/Muttrc,${CONFDIR}/Muttrc," ${PREFIX}/man/man1/mutt.1
	@perl -pi -e "s,/etc/mime.types,${CONFDIR}/mime.types," ${PREFIX}/man/man1/mutt.1
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/mutt/gpg.rc
