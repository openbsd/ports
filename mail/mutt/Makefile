# $OpenBSD: Makefile,v 1.28 2000/03/24 23:28:16 espie Exp $

DISTNAME=	mutt-1.0.1i
CATEGORIES=     mail
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.guug.de/pub/mutt/ \
		ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
                ftp://ftp.gbnet.net/pub/mutt-international/ \
                ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
                ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/

MAINTAINER=	turan@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

TTY_LIB?=slang

FAKE=		Yes
LIB_DEPENDS=	intl.1::devel/gettext 

GNU_CONFIGURE=	Yes
SYSCONFDIR=	${PREFIX}/share/mutt
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--with-sharedir=${PREFIX}/share/mutt \
		--with-docdir=${PREFIX}/share/doc/mutt 

PKGNAME=${DISTNAME}-${TTY_LIB}

.if ${TTY_LIB:L} == "slang"
LIB_DEPENDS+=	slang.13::devel/libslang
CONFIGURE_ARGS+=--with-slang=${PREFIX}

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
