# $OpenBSD: Makefile,v 1.4 2009/03/25 13:39:40 jasper Exp $

COMMENT =		configuration utility for DRI drivers

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		driconf-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME}p1
CATEGORIES =		x11

HOMEPAGE =		http://people.freedesktop.org/~fxkuehl/driconf/dri_config_design_rev4.html
MASTER_SITES =		http://people.freedesktop.org/~fxkuehl/driconf/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
RUN_DEPENDS =		::x11/py-gtk2

pre-configure:
	@mkdir -p ${WRKSRC}/lib/driconf
	@touch ${WRKSRC}/lib/driconf/__init__.py
	@cd ${WRKSRC}; mv dri.py driconf.py ./lib/driconf/.
	@cd ${WRKSRC}; for i in driconf_*.py; do \
	    mv $$i ./lib/driconf/$${i#*_}; done

.include <bsd.port.mk>
