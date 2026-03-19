CATEGORIES +=		sysutils security

HOMEPAGE =		https://github.com/libyal/${BASENAME}/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/libyal/${BASENAME}/releases/download/${VERSION}/

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-setuptools

WRKDIST =		${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE =	gnu
