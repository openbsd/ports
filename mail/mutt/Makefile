# $OpenBSD: Makefile,v 1.8 1999/01/12 05:07:16 turan Exp $

DISTNAME=		mutt-0.95.1i
CATEGORIES=     	mail
WRKSRC=			${WRKDIR}/mutt-0.95.1

#MIRROR_DISTFILE=	no

MAINTAINER=		turan@cvs.openbsd.org

MASTER_SITES=		ftp://ftp.guug.de/pub/mutt/ \
			ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
			ftp://ftp.gbnet.net/pub/mutt-international/ \
			ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
			ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ 

GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--prefix=/usr/local \
			--with-slang=/usr/local \
			--with-docdir=/usr/local/share/doc/mutt \
			--with-sharedir=/usr/local/share/mutt \


LIB_DEPENDS=    slang.1.22:${PORTSDIR}/devel/libslang

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO}
	@${ECHO} '**********************************************************'
	@${ECHO} '* This software contains cryptography enabling code.  It *'
	@${ECHO} '* is illegal to export outside of the United States.     *'
	@${ECHO} '**********************************************************'
	@${ECHO}
.endif

post-install:
	strip ${PREFIX}/bin/mutt
	@${ECHO} 
	@${ECHO} '************************************************************'
	@${ECHO} '* Remember to create or update Muttrc and mime.types       *'
	@${ECHO} '* from the Muttrc.sample and mime.types.sample files which *'
	@${ECHO} '* have been copied into the PREFIX/share/mutt directory.   *'
	@${ECHO} '************************************************************'
	@${ECHO}

.include <bsd.port.mk>
