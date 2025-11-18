COMMENT =	wrapper around various text markup languages

MODPY_DISTV =	4.1.1
DISTNAME =	markups-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

# https://github.com/retext-project/pymarkups
HOMEPAGE =	https://pymarkups.readthedocs.io/

MAINTAINER =	Pedro Almeida <palmeida@monkeys.pt>

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# deps for the various markup languages; they're optional but it
# seems useful to provide at least the common ones by default:

# Markups[markdown]
RUN_DEPENDS +=	textproc/py-markdown \
		textproc/py-yaml \
		textproc/py-python-markdown-math

# Markups[restructuredtext]
RUN_DEPENDS +=	textproc/py-docutils

# Markups[asciidoc]
RUN_DEPENDS +=	textproc/asciidoc \
		textproc/py-lxml

# there's also Markups[textile] which needs https://pypi.org/project/textile,
# not in ports but we do have the deps needed by it

.include <bsd.port.mk>
