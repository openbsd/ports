# $OpenBSD: Makefile,v 1.2 2013/03/17 13:32:21 espie Exp $

MODULES = base/xenocara

PERMIT_PACKAGE_CDROM=   Yes

COMPONENT = share/mk

post-patch pre-configure do-configure:

NO_BUILD = Yes

pre-install:
	touch ${WRKDIR}/badlist

.include <bsd.port.mk>
