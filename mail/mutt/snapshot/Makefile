# $OpenBSD: Makefile,v 1.18 2002/05/03 15:13:14 lebel Exp $

COMMENT=	"tty-based e-mail client, development version"

VERSION=	1.3.99
DISTNAME=	mutt-${VERSION}i
CATEGORIES=	mail
NEED_VERSION=	1.460
MASTER_SITES=	ftp://ftp.mutt.org/pub/mutt/ \
		ftp://ftp.gbnet.net/pub/mutt-international/ \
		ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
		ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ \
		ftp://ftp.iks-jena.de/pub/mitarb/lutz/crypt/software/pgp/mutt/
MASTER_SITES0=	http://www.spinnaker.de/mutt/compressed/

HOMEPAGE=	http://www.mutt.org/

MODULES=	gettext

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	slang mixmaster compressed
FLAVOR?=

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=     gcc-* patch-*
.endif

SYSCONFDIR=	/etc/mutt
CONFIGURE_ARGS=	--with-sharedir="${PREFIX}/share/mutt" \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--enable-flock --disable-fcntl \
		--enable-external_dotlock \
		--enable-imap --enable-pop --with-ssl
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
PATCHFILES+=	patch-${VERSION}.rr.compressed.1.gz:0
PATCH_DIST_STRIP=-p1
CONFIGURE_ARGS+= --enable-compressed
CONFIGURE_STYLE= autoconf
.else
SUPDISTFILES+=  patch-${VERSION}.rr.compressed.1.gz:0
CONFIGURE_STYLE= gnu
.endif

.if ${FLAVOR:L:Mmixmaster}
CONFIGURE_ARGS+= --with-mixmaster="${LOCALBASE}/sbin/mixmaster"
RUN_DEPENDS+=	::mail/mixmaster
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

.include <bsd.port.mk>
