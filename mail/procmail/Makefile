# $OpenBSD: Makefile,v 1.6 1999/04/07 18:53:21 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       procmail-3.12
CATEGORIES=	mail
#NO_CDROM=	"NOFEE:	Can not sell" # is GPLed as of version 3.12

MASTER_SITES=	ftp://ftp.procmail.org/pub/procmail/

INSTALL_TARGET= install-suid install.man

MAINTAINER=     rohee@OpenBSD.ORG

# It asks for list af directories to do test for file locking
# (defaults to /tmp and ".", so return should suffice in most cases).
.if !defined(PACKAGE_BUILDING) # handled in patch-aa
IS_INTERACTIVE=	yes
.endif

pre-fetch:
	@${ECHO} ""
	@${ECHO} "Some security vulnerabilities has been discovered in this"
	@${ECHO} "package during the making of the OpenBSD 2.5 CDROMs."
	@${ECHO} ""
	@${ECHO} "You can update this port using CVS to a version with the"
	@${ECHO} "vulnerabilities fixed."
	@${ECHO} "To learn how to use CVS to update your port tree check"
	@${ECHO} "    http://www.OpenBSD.ORG/anoncvs.html"
	@${ECHO} "and then do : cd /usr ; cvs get ports/mail/procmail"
	@${ECHO} ""
	@${FALSE} 

.include <bsd.port.mk>
