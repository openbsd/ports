# $OpenBSD: Makefile,v 1.13 1999/04/02 00:37:50 turan Exp $

DISTNAME=		mutt-0.95.4i
CATEGORIES=     	mail
WRKSRC=			${WRKDIR}/mutt-0.95.4

#MIRROR_DISTFILE=	no

MAINTAINER=		turan@cvs.openbsd.org

MASTER_SITES=		ftp://ftp.guug.de/pub/mutt/ \
			ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
			ftp://ftp.gbnet.net/pub/mutt-international/ \
			ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
			ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ 

GNU_CONFIGURE=		yes
SYSCONFDIR=		${PREFIX}/share/mutt
CONFIGURE_ARGS=		--prefix=/usr/local \
			--with-slang=/usr/local \
			--with-docdir=/usr/local/share/doc/mutt \
			--with-sharedir=/usr/local/share/mutt

LIB_DEPENDS=    slang.1.22:${PORTSDIR}/devel/libslang

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
	@${ECHO} '* A sample muttrc and mime.types is available at           *'
	@${ECHO} '* /usr/local/share/mutt/{Muttrc,mime.types}                *'
	@${ECHO} '************************************************************'
	@${ECHO}

.include <bsd.port.mk>
