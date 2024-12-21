COMMENT=		interact with Youtube Chromecast api

MODPY_DISTV=	0.2.1
DISTNAME=		casttube-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		5

CATEGORIES=		multimedia net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS=		net/py-idna \
			textproc/py-chardet \
			www/py-requests

# needs screen_id: https://github.com/ur1katz/CastTube-Scripts
TEST_IS_INTERACTIVE=	Yes

post-install:
	rm ${PREFIX}/LICENSE

.include <bsd.port.mk>
