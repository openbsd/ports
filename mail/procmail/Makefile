# $OpenBSD: Makefile,v 1.7 1999/04/20 17:58:39 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       procmail-3.13.1
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

.include <bsd.port.mk>
