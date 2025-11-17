COMMENT =		command-line tool to access B2 cloud storage

# Holding at 4.3.3 due to 
# https://github.com/Backblaze/B2_Command_Line_Tool/issues/1104
MODPY_DISTV =		4.3.3

DISTNAME =		b2-${MODPY_DISTV}
PKGNAME =		backblaze-${DISTNAME}
#REVISION =		0

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

RUN_DEPENDS =		devel/py-argcomplete \
			devel/py-arrow \
			devel/py-phx-class-registry \
			devel/py-tabulate \
			devel/py-tqdm \
			net/py-b2sdk \
			sysutils/py-platformdirs \
			textproc/py-docutils \
			textproc/py-rst2ansi

# no tests in pypi package
NO_TEST =		Yes

# rename b2 to avoid conflict with boost's b2
post-install:
	@mv ${PREFIX}/bin/b2 ${PREFIX}/bin/backblaze-b2

.include <bsd.port.mk>
