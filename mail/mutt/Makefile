# $OpenBSD: Makefile,v 1.21 2000/01/21 16:39:36 espie Exp $

DISTNAME=	mutt-1.0.1i
CATEGORIES=     mail
MASTER_SITES=	ftp://ftp.guug.de/pub/mutt/ \
		ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/

MAINTAINER=	turan@openbsd.org

TTY_LIB?=slang

LIB_DEPENDS=	intl.1:${PORTSDIR}/devel/gettext 

GNU_CONFIGURE=	yes
SYSCONFDIR=	${PREFIX}/share/mutt
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--with-sharedir=${PREFIX}/share/mutt \
		--with-docdir=${PREFIX}/share/doc/mutt 

PKGNAME=${DISTNAME}-${TTY_LIB}

.if ${TTY_LIB:L} == "slang"
LIB_DEPENDS+=	slang.13:${PORTSDIR}/devel/libslang
CONFIGURE_ARGS+=--with-slang=${PREFIX}
# work-around for ld problem with slang
CONFIGURE_ENV=LIBS=-lc

.elif ${TTY_LIB:L} == "curses"
CONFIGURE_ARGS+=--with-curses
.else
.BEGIN::
	@echo "Bad choice TTY_LIB=${TTY_LIB}"; exit 1
.endif

.if defined(HOMESPOOL)
CONFIGURE_ARGS+= --with-homespool=${HOMESPOOL}
.endif

# If you need IMAP or IPOP, you may want to enable those.
# NOTE: read mutt documentation !!! those `features' are not very
# useful, it's likely you would be better off using fetchmail...
.if defined(WITH_IMAP)
CONFIGURE_ARGS+= --enable-imap
.endif

.if defined(WITH_POP)
CONFIGURE_ARGS+= --enable-pop
.endif

WRKSRC=		${WRKDIR}/${DISTNAME:S/i$//}

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO}
	@${ECHO} '**********************************************************'
	@${ECHO} '* This software contains cryptographic enabling code.    *'
	@${ECHO} '* It is illegal to export outside of the United States.  *'
	@${ECHO} '**********************************************************'
	@${ECHO}
.endif

post-install:
	strip ${PREFIX}/bin/mutt
	@${ECHO} 
	@${ECHO} '************************************************************'
	@${ECHO} ' A sample muttrc and mime.types is available in '
	@${ECHO} ' ${PREFIX}/share/mutt/{Muttrc,mime.types}       '        
	@${ECHO} '************************************************************'
	@${ECHO}

.include <bsd.port.mk>
