# OpenBSD makefile for:	procmail
# Version required:     3.11pre7
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/04/12 03:16:38 marc Exp $
#

DISTNAME=       procmail-3.11pre7
PKGNAME=        procmail-3.11p7
CATEGORIES=	mail
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/
INSTALL_TARGET= install-suid install.man

MAINTAINER=     joey@OpenBSD.ORG

# It asks for list af directories to do test for file locking
# (defaults to /tmp and ".", so return should suffice in most cases).
.if !defined(PACKAGE_BUILDING) # handled in patch-aa
IS_INTERACTIVE=	yes
.endif
MAN1=		procmail.1 formail.1 lockfile.1
MAN5=		procmailex.5 procmailrc.5 procmailsc.5

.include <bsd.port.mk>
