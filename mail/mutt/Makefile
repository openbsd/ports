# $OpenBSD: Makefile,v 1.7 1999/01/11 02:40:05 marc Exp $
#

# What port/package will be created
#
DISTNAME=		mutt-0.95.1
DISTFILES=		${DISTNAME}i${EXTRACT_SUFX}

CATEGORIES=     	mail

MIRROR_DISTFILE=	no

# where to send bitches about this port
#
MAINTAINER=		turans@umich.edu

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.guug.de/pub/mutt/ \
			ftp://riemann.iam.uni-bonn.de/pub/mutt/ \
			ftp://ftp.gbnet.net/pub/mutt-international/ \
			ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/ \
			ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/ 

# build/configuration variables
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--enable-pop \
			--enable-imap \
			--enable-flock \
			--disable-fcntl \
			--with-slang=${PREFIX} \
			--with-docdir=${PREFIX}/share/doc/mutt \
			--sysconfdir=/etc

LIB_DEPENDS=    slang.1.22:${PORTSDIR}/devel/libslang

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO} 
	@${ECHO} This software contains cryptography enabling code.  It is 
	@${ECHO} illegal to export outside of the United States.  The 
	@${ECHO} download site is set to Germany.  Once you bring it into 
	@${ECHO} the US, it may not leave again.
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
