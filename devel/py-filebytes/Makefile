COMMENT=	python module to read and write ELF, PE, MachO or OAT

MODPY_DISTV=	0.10.2
DISTNAME=	filebytes-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel security

# https://github.com/sashs/filebytes
HOMEPAGE=	https://scoding.de/filebytes-introduction

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# not really tests, but if you clone the git repo, you can run
# "python3 samples/sample_elf.py" etc
NO_TEST=	Yes

.include <bsd.port.mk>
