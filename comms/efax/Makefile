# $OpenBSD: Makefile,v 1.3 1998/10/07 18:28:50 marc Exp $

DISTNAME=       efax08a
PKGNAME=        efax-0.8a
CATEGORIES=	comm

MAINTAINER=	ian@OpenBSD.ORG

MASTER_SITES=	ftp://sunsite.unc.edu/pub/Linux/apps/serialcomm/fax/

IS_INTERACTIVE=	yes # for reasons shown in pre-install!

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
