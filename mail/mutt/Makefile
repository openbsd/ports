# $OpenBSD: Makefile,v 1.3 1998/12/16 20:08:42 marc Exp $
#

# What port/package will be created
#
DISTNAME=		mutt-0.93.2i
CATEGORIES=     	mail

# where to send bitches about this port
#
MAINTAINER=		turans@umich.edu

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.guug.de/pub/mutt/

# build/configuration variables
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--prefix=/usr/local --with-sharedir=/usr/local/share/mutt --with-docdir=/usr/local/share/doc/mutt --with-slang=/usr/local

#LIB_DEPENDS=    slang\\.0\\.99[0-9][0-9]:${PORTSDIR}/devel/libslang
LIB_DEPENDS=    slang\\.1\\.22:${PORTSDIR}/devel/libslang

.if !defined(NO_WARNINGS)
pre-fetch:
	@${ECHO} 
	@${ECHO} This software contains cryptography enabling code.  It is 
	@${ECHO} illegal to export outside of the United States.  The 
	@${ECHO} download site is set to Germany.  Once you bring it into 
	@${ECHO} the US, it may not leave again.
	@${ECHO}
.endif

.include <bsd.port.mk>
