# $OpenBSD: Makefile,v 1.16 1999/07/15 02:42:28 brad Exp $

DISTNAME=	mutt-0.95.6i
CATEGORIES=     mail
MASTER_SITES=	ftp://ftp.guug.de/pub/mutt/ \
		ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
		ftp://ftp.gbnet.net/pub/mutt-international/ \
		ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
		ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ 

MAINTAINER=	turan@openbsd.org

LIB_DEPENDS=	slang.13:${PORTSDIR}/devel/libslang

GNU_CONFIGURE=	yes
SYSCONFDIR=	${PREFIX}/share/mutt
CONFIGURE_ARGS=	--prefix=/usr/local \
		--with-slang=/usr/local \
		--with-docdir=/usr/local/share/doc/mutt \
		--with-sharedir=/usr/local/share/mutt

WRKSRC=		${WRKDIR}/mutt-0.95.6

pre-fetch:
.if !defined(NO_WARNINGS)
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
