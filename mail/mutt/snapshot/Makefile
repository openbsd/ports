# $OpenBSD: Makefile,v 1.8 2002/01/03 02:45:01 lebel Exp $

COMMENT=	"tty-based e-mail client, development version"

VERSION=	1.3.25
DISTNAME=	mutt-${VERSION}i
CATEGORIES=     mail
NEED_VERSION=	1.460
MASTER_SITES=	ftp://ftp.mutt.org/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ \
		ftp://ftp.iks-jena.de/pub/mitarb/lutz/crypt/software/pgp/mutt/

HOMEPAGE=	http://www.mutt.org/

MODULES=	gettext

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# disable compressed FLAVOR for the time being, until the author of the patch
# provide a new patch fro 1.3.25 (or a later version).
FLAVORS=	slang imap pop mixmaster # compressed
FLAVOR?=

SYSCONFDIR=	/etc/mutt
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
# http://www.spinnaker.de/mutt/compressed/
.if ${FLAVOR:L:Mcompressed}
MASTER_SITES0=	http://www.spinnaker.de/mutt/compressed/
PATCHFILES+=	patch-${VERSION}.rr.compressed.1.gz:0
PATCH_DIST_STRIP=-p1
CONFIGURE_ARGS+= --enable-compressed
CONFIGURE_STYLE= autoconf
.else
CONFIGURE_STYLE= gnu
.endif

# If you need IMAP or POP, you may want to enable those.
.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+= --enable-imap --with-ssl
.endif

# Note: The POP3 support is there only for convenience, and it's rather
# limited.  If you need more functionality you should consider using a
# specialized program, such as fetchmail.
.if ${FLAVOR:L:Mpop}
CONFIGURE_ARGS+= --enable-pop --with-ssl
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

post-configure:
# make sure `missing' as the proper bits sets.
	@chmod 755 ${WRKSRC}/missing

post-install:
	@strip ${PREFIX}/bin/mutt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mutt
	${INSTALL_DATA} ${WRKSRC}/Muttrc \
		${PREFIX}/share/examples/mutt/Muttrc.sample
	${INSTALL_DATA} ${WRKSRC}/mime.types \
		${PREFIX}/share/examples/mutt/mime.types.sample
	mv ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	rmdir ${PREFIX}/share/doc/mutt/samples

.include <bsd.port.mk>
