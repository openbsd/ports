# $OpenBSD: Makefile,v 1.30 2000/06/28 22:28:20 fgsch Exp $

DISTNAME=	mutt-1.0.1i
CATEGORIES=     mail
NEED_VERSION=	1.308
MASTER_SITES=	ftp://ftp.guug.de/pub/mutt/ \
		ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/

MAINTAINER=	turan@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=slang curses imap pop

.if defined(TTY_LIB)
FLAVOR?=
FLAVOR+=${TTY_LIB}
.endif
FLAVOR?=slang
.if defined(WITH_IMAP)
FLAVOR+=imap
.endif
.if defined(WITH_POP)
FLAVOR+=pop
.endif

LIB_DEPENDS=	intl.1::devel/gettext 

CONFIGURE_STYLE= gnu
SYSCONFDIR=	${PREFIX}/share/mutt
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--with-sharedir=${PREFIX}/share/mutt \
		--with-docdir=${PREFIX}/share/doc/mutt 

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14::devel/libslang
CONFIGURE_ARGS+=--with-slang=${PREFIX}

.elif ${FLAVOR:L:Mcurses}
CONFIGURE_ARGS+=--with-curses
.else
.BEGIN:
	@echo "Bad choice FLAVOR=${FLAVOR}"; exit 1
.endif

.if defined(HOMESPOOL)
CONFIGURE_ARGS+= --with-homespool=${HOMESPOOL}
.endif

# If you need IMAP or IPOP, you may want to enable those.
# NOTE: read mutt documentation !!! those `features' are not very
# useful, it's likely you would be better off using fetchmail...
.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+= --enable-imap
.endif

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
	strip ${PREFIX}/bin/mutt
	@echo 
	@echo '************************************************************'
	@echo ' A sample muttrc and mime.types is available in '
	@echo ' ${PREFIX}/share/mutt/{Muttrc,mime.types}       '        
	@echo '************************************************************'
	@echo

.include <bsd.port.mk>
