# OpenBSD makefile for:	kaffe
# Version required:     1.0.b1
# Date created:		27 Aug 1998
# Whom:			ian
#
# $OpenBSD: Makefile,v 1.1 1998/09/06 22:39:51 ian Exp $

DISTNAME=       efax08a
CATEGORIES=	comm

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

MAINTAINER=	ian@OpenBSD.ORG

IS_INTERACTIVE=	yes # for reasons shown in per-install!
pre-install:
		@echo "At this stage you MUST customize the \"fax\" script\n\
slightly. In the following editor session, you must set the device\n\
name (normally cua00 on a workstation, cua01 on a PC with a serial mouse).\n\
You also MUST SET BY LAW in many jurisdictions your name and your\n\
return FAX telephone number.\n\
In short, check and set at least DEV, NAME and FROM, in addition to\n\
any modem-specific settings required."
		@echo Press return to continue...
		@sh -c "read junk"
		vi ${WRKSRC}/fax

# the inner program, efax, must be setuid uucp, same as tip, cu, uucp,
# so that it can open /dev/cua?? read/write.
post-install:
		chown uucp ${PREFIX}/bin/efax
		chmod u+s  ${PREFIX}/bin/efax

.include <bsd.port.mk>
