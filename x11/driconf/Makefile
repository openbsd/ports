# $OpenBSD: Makefile,v 1.16 2021/02/23 19:39:49 sthen Exp $

COMMENT =		configuration utility for DRI drivers

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		driconf-${MODPY_EGG_VERSION}
REVISION=		6
CATEGORIES =		x11

HOMEPAGE =		https://dri.freedesktop.org/wiki/DriConf
MASTER_SITES =		https://people.freedesktop.org/~fxkuehl/driconf/ \
			https://distfiles.sigtrap.nl/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS =		x11/py-gtk2

pre-configure:
	@mkdir -p ${WRKSRC}/lib/driconf
	@touch ${WRKSRC}/lib/driconf/__init__.py
	@cd ${WRKSRC}; mv dri.py driconf.py ./lib/driconf/.
	@cd ${WRKSRC}; for i in driconf_*.py; do \
	    mv $$i ./lib/driconf/$${i#*_}; done

.include <bsd.port.mk>
