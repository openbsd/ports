# $OpenBSD: Makefile,v 1.46 2001/08/03 14:59:19 fgsch Exp $

COMMENT=	"tty-based e-mail client"

DISTNAME=	mutt-1.2.5i
CATEGORIES=     mail
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.mutt.org/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ \
		ftp://ftp.iks-jena.de/pub/mitarb/lutz/crypt/software/pgp/mutt/

HOMEPAGE=	http://www.mutt.org/

LIB_DEPENDS=	intl.1::devel/gettext 

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	slang imap pop compressed mixmaster
FLAVOR?=

SYSCONFDIR=	/etc/mutt
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sharedir="${PREFIX}/share/mutt" \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--enable-flock --disable-fcntl \
		--enable-external_dotlock
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14::devel/libslang
CONFIGURE_ARGS+= --with-slang="${PREFIX}"
.else
CONFIGURE_ARGS+= --with-curses
.endif

# compressed folder support provided by
# http://www.spinnaker.de/mutt/compressed/patch-1.2.5.rr.compressed.1.gz
.if ${FLAVOR:L:Mcompressed}
MASTER_SITES0=	http://www.spinnaker.de/mutt/compressed/
PATCHFILES+=	patch-1.2.5.rr.compressed.1.gz:0
PATCH_DIST_STRIP=-p1
CONFIGURE_ARGS+= --enable-compressed
.endif

# If you need IMAP or POP, you may want to enable those.
.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+= --enable-imap --with-ssl
.endif

# Note: The POP3 support is there only for convenience, and it's rather
# limited.  If you need more functionality you should consider using a
# specialized program, such as fetchmail.
.if ${FLAVOR:L:Mpop}
CONFIGURE_ARGS+= --enable-pop
.endif

.if ${FLAVOR:L:Mmixmaster}
MIXMASTER=             ${LOCALBASE}/sbin/mixmaster
CONFIGURE_ARGS+=       --with-mixmaster="${MIXMASTER}"
RUN_DEPENDS+=          ${MIXMASTER}::mail/mixmaster
.endif

.if defined(HOMESPOOL)
CONFIGURE_ARGS+= --with-homespool="${HOMESPOOL}"
.endif

.if defined(DOMAIN)
CONFIGURE_ARGS+= --with-domain="${DOMAIN}"
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/i$//}

post-install:
	@strip ${PREFIX}/bin/mutt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mutt
	${INSTALL_DATA} ${WRKSRC}/Muttrc \
	 ${PREFIX}/share/examples/mutt/Muttrc.sample
	${INSTALL_DATA} ${WRKSRC}/mime.types \
	 ${PREFIX}/share/examples/mutt/mime.types.sample

.include <bsd.port.mk>
