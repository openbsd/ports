COMMENT =		a library and tool that implements DKIM/ARC

MODPY_DISTV =	1.1.8
DISTNAME =		dkimpy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		mail
HOMEPAGE =		https://launchpad.net/dkimpy
REVISION =		0

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# BSD
PERMIT_PACKAGE =	Yes

MODULES	=		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		mail/py-authres \
			net/py-aiodns \
			net/py-dnspython \
			security/py-PyNaCl

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rm -r ${PREFIX}/share/man

.include <bsd.port.mk>
