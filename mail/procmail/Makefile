# OpenBSD makefile for: procmail
# Version required:     3.11pre7
# Date created:         10 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.4 1999/03/24 19:04:14 rohee Exp $
#

DISTNAME=       procmail-3.12
CATEGORIES=	mail
#NO_CDROM=	"NOFEE:	Can not sell" # is GPLed as of version 3.12

MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/
INSTALL_TARGET= install-suid install.man

MAINTAINER=     rohee@OpenBSD.ORG

# It asks for list af directories to do test for file locking
# (defaults to /tmp and ".", so return should suffice in most cases).
.if !defined(PACKAGE_BUILDING) # handled in patch-aa
IS_INTERACTIVE=	yes
.endif

.include <bsd.port.mk>
