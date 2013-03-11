# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:09 espie Exp $

COMMENT =		configuration utility for DRI drivers

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		driconf-${MODPY_EGG_VERSION}
REVISION=		5
CATEGORIES =		x11

HOMEPAGE =		http://dri.freedesktop.org/wiki/DriConf
MASTER_SITES =		http://distfiles.nl/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
RUN_DEPENDS =		x11/py-gtk2

pre-configure:
	@mkdir -p ${WRKSRC}/lib/driconf
	@touch ${WRKSRC}/lib/driconf/__init__.py
	@cd ${WRKSRC}; mv dri.py driconf.py ./lib/driconf/.
	@cd ${WRKSRC}; for i in driconf_*.py; do \
	    mv $$i ./lib/driconf/$${i#*_}; done

.include <bsd.port.mk>
