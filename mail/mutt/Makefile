# $OpenBSD: Makefile,v 1.37 2000/07/27 22:27:59 brad Exp $

DISTNAME=	mutt-1.2.4i
CATEGORIES=     mail
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.mutt.org/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ \
		ftp://ftp.iks-jena.de/pub/mitarb/lutz/crypt/software/pgp/mutt/

HOMEPAGE=	http://www.mutt.org/

LIB_DEPENDS=	intl.1::devel/gettext 

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	slang curses imap pop
FLAVOR?=	curses

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
.elif ${FLAVOR:L:Mcurses}
CONFIGURE_ARGS+= --with-curses
.else
.BEGIN:
	echo "Bad choice FLAVOR=${FLAVOR}"; exit 1
.endif

.if defined(HOMESPOOL)
CONFIGURE_ARGS+= --with-homespool="${HOMESPOOL}"
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

WRKDIST=	${WRKDIR}/${DISTNAME:S/i$//}

.if !defined(NO_WARNINGS)
pre-fetch:
	@echo
	@echo '**********************************************************'
	@echo '* This software contains cryptographic enabling code.    *'
	@echo '* It is illegal to export outside of the United States.  *'
	@echo '**********************************************************'
	@echo
.endif

post-install:
	@strip ${PREFIX}/bin/mutt
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mutt
	${INSTALL_DATA} ${WRKSRC}/Muttrc ${PREFIX}/lib/mutt/Muttrc.sample
	${INSTALL_DATA} ${WRKSRC}/mime.types ${PREFIX}/lib/mutt/mime.types.sample

.include <bsd.port.mk>
