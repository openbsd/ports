# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 09:58:06 espie Exp $

MODULES = base/xenocara

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

COMPONENT = share/mk

post-patch pre-configure do-configure:

NO_BUILD = Yes

pre-install:
	touch ${WRKDIR}/badlist

.include <bsd.port.mk>
