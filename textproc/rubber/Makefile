COMMENT=	wrapper for LaTeX and friends

MODPY_DISTV=	1.5.1
DISTNAME=	rubber-${MODPY_DISTV}
REVISION=	4

CATEGORIES=	textproc print

HOMEPAGE=	https://launchpad.net/rubber/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/trunk/${MODPY_DISTV}/+download/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	print/texinfo \
		print/texlive/base
RUN_DEPENDS=	print/texlive/base

# makeinfo: unknown option -- info
pre-configure:
	sed -i -e 's,makeinfo,gmakeinfo,g;' \
		-e 's,texi2dvi,gtexi2dvi,g;' ${WRKSRC}/setup.py

post-install:
	mv ${WRKINST}${MODPY_SITEPKG}/usr/local/info ${PREFIX}/
	mv ${WRKINST}${MODPY_SITEPKG}/usr/local/share/doc/rubber ${PREFIX}/share/doc/
	mv ${WRKINST}${MODPY_SITEPKG}/usr/local/man/man1/* ${PREFIX}/man/man1/
	mv ${WRKINST}${MODPY_SITEPKG}/usr/local/man/fr/ ${PREFIX}/man/
	find ${WRKINST}${MODPY_SITEPKG}/usr -type d -delete

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./run.sh

.include <bsd.port.mk>
