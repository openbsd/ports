# $OpenBSD: Makefile,v 1.2 2016/06/14 19:11:34 rpointel Exp $

COMMENT =	analyze OLE files

MODPY_EGG_VERSION =	0.0.24
DISTNAME =	oledump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	oledump-${MODPY_EGG_VERSION}


CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/programs/oledump-py/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
RUN_DEPENDS =	security/yara/python \
		devel/py-olefile

NO_BUILD =	Yes
NO_TEST =	Yes

MODPY_ADJ_FILES += oledump.py

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/oledump.py ${PREFIX}/bin/

.include <bsd.port.mk>
